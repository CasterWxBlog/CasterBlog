<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/12/5
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=gb2312">
    <meta http-equiv="Content-Language" content="zh-CN">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>CasterWx - 一群肥宅的博客网站</title>
    <link rel="shortcut icon" href="../images/Logo_40.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../frag3d/main.css"/>
</head>
<body style="color: #000;background:url(https://www.cnblogs.com/images/cnblogs_com/LexMoon/1246510/o_header-mai.jpg) fixed; background-size: cover;background-repeat: repeat;font-size: 15px;min-height: 101%;">
<div id="extension" class="content">
</div>
<canvas id="renderer" width="100%" height="100%"></canvas>

<script id="gpgpu-vs" type="x-shader/x-vertex">
            attribute vec3  a_Position;
            attribute vec2  a_texCoord;
            varying vec2  uv;
            void main () {
                uv = a_texCoord;
                gl_Position = vec4(a_Position, 1);
            }
        </script>
<script id="gpgpu-fs" type="x-shader/x-fragment">
            #extension GL_OES_standard_derivatives : enable
            precision mediump float;
            uniform sampler2D   data;
            varying vec2        uv;
            void main () {
                gl_FragColor = texture2D(data, uv);
                //vec2 xy = gl_FragCoord.xy / vec2(2354, 1608);
                //gl_FragColor = vec4(xy, 0, 1);
            }
            var can = getShaderByID('cas1')

        </script>
<script id="Shader-vs" type="x-shader/x-vertex">
            #define OFFSET_STOP_AT 1000.0
            #define ROTATE_START_AT 10.0
            // Mesh
            attribute vec3 a_Position;
            attribute vec3 a_Color;
            attribute vec3 a_Normal;
            attribute vec2 a_UV;
            // MVP
            uniform mat4 u_M;
            uniform mat4 u_V;
            uniform mat4 u_P;
            uniform mat4 u_normalMatrix;
            uniform float u_time;

            // Interpolated
            varying vec3 v_normal;      // 每个片元的法线
            varying vec3 v_pos;         // 每个片元的位置
            varying vec2 v_texCoord;    // 每个片元的纹素坐标
            varying vec3 v_color;

            uniform sampler2D u_noise;


            vec3 rotateVec3(vec3 p, float angle, vec3 axis){
                vec3 a = normalize(axis);
                float s = sin(angle);
                float c = cos(angle);
                float r = 1.0 - c;
                mat3 m = mat3(
                    a.x * a.x * r + c,
                    a.y * a.x * r + a.z * s,
                    a.z * a.x * r - a.y * s,
                    a.x * a.y * r - a.z * s,
                    a.y * a.y * r + c,
                    a.z * a.y * r + a.x * s,
                    a.x * a.z * r + a.y * s,
                    a.y * a.z * r - a.x * s,
                    a.z * a.z * r + c
                );
                return m * p;
            }
            float rand(vec2 co){
                return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
            }

            vec3 offsetAnimation(vec4 data) {
                vec3 v = data.rgb - 0.5;    // direction
                float a = min(data.a * 0.0001, 0.005);
                float t = min(u_time, OFFSET_STOP_AT);
                vec3 offset_distance = v * a * t * t;
                return offset_distance;
            }
            vec3 rotateAnimation(vec4 data, vec3 pos) {
                vec3 axis = normalize(data.rgb - 0.5);    // direction
                float t = max(u_time-ROTATE_START_AT, 0.0);
                float rad = data.a * 0.01;    // 角速度
                vec3 rot = rotateVec3(pos, rad * t, axis);
                return rot;
            }
            void main () {
                vec3 deltaV = texture2D(u_noise,a_UV).rgb;
                v_color = vec3(0.25, 0.76, 1);

                vec4 data = texture2D(u_noise, a_UV);
                vec3 p = a_Position + offsetAnimation(data);
                p = rotateAnimation(data, p);
                gl_Position = u_P * u_V * u_M * vec4(p, 1);
                v_pos = vec3(u_M * vec4(p, 1));   // 每个片元的世界坐标
                v_normal = vec3(u_normalMatrix * vec4(a_Normal, 1));  // 每个片元的法线
                v_texCoord = a_UV;
                gl_PointSize  = 1.0;
            }
        </script>
<script id="Shader-fs" type="x-shader/x-fragment">
            #extension GL_OES_standard_derivatives : enable

            #define PI              3.1415926535898
            precision mediump float;

            varying vec3 v_normal;          // 每个片元的法线
            varying vec3 v_pos;             // 每个片元的位置
            varying vec2 v_texCoord;    // 每个片元的纹素坐标
            varying vec3 v_color;
            // uniform sampler2D u_noise;

            void main () {

                vec3 n = normalize(v_normal);

                vec3 l = normalize(vec3(10, 10, 10) - v_pos);
                vec3 lb = normalize(vec3(-10, -10, 10) - v_pos);

                // vec3 deltaV = texture2D(u_noise,v_texCoord).rgb;

                // Diffuse
                vec3 diffuseContrib = vec3(v_color) * max(dot(n, l), 0.0);
                diffuseContrib = max(diffuseContrib, v_color * 0.2);
                diffuseContrib += vec3(v_color).grb * 0.6 * max(dot(n, lb), 0.0);

                // Final Result
                gl_FragColor = vec4(pow(diffuseContrib, vec3(1)), 1);
                // gl_FragColor = vec4(deltaV, 1);
            }
        </script>

<script src="../frag3d/jquery-2.1.4.min.js"></script>
<script src="../frag3d/cuon-matrix.js"></script>
<script src="../frag3d/mesh.js"></script>
<script src="../frag3d/render.js"></script>
<script src="../frag3d/control.js"></script>
<script src="../frag3d/frag3d.js"></script>
<script>
    a = $(window).height();    //浏览器窗口高度
    $(window).scroll(function(){
        b = $(this).scrollTop();   //页面滚动的高度
        c = $('div').height() / 4 * 3;
        if(a+b>c){
            window.location.href="/home"
        }else{
        }
    });
</script>
</body>
</html>
