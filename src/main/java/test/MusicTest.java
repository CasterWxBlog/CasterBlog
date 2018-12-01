package test;

import blog.dao.impl.MusicImpl;
import blog.domain.Music;
import org.junit.jupiter.api.Test;

/**
 * @author CasterWx  AntzUhl
 * @site https://github.com/CasterWx
 * @company Henu
 * @create 2018-12-01-15:32
 */
public class MusicTest {
    @Test
    public void test(){
        Music music = new Music() ;
        String artist,cover,lrc,name,url ;

        artist = "田馥甄" ;
        cover = "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951163571315498&auth=d170f27a04094b4aed5c82e8a6139871528b0138918dbcd3c1c93a2721597d60" ;
        lrc = "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=28018072&auth=ce08141601ab1b10a41060a92bd72a093c9945c1677ab9cc7318ee22ce5042b4";
        name = "不醉不会";
        url = "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=28018072&auth=416122fb72a2de809df106a9fd066ecfc87790083395b291a683c26633be506f";

        artist = "the peggies";
        cover= "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951163584774774&auth=e39794915dfc23dec72fc58c1b9516149819efaf50ec568e8072ee8ea30b0632";
        lrc= "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=1313107902&auth=69ac3664a352b0edc4a69cb2becc6763e479090bdad615f71132f5970a72c382";
        name= "君のせい";
        url="https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=1313107902&auth=f8189e443120762c7f332dfc4a25d7480e3746e63bf6960875a41b16662b52a2";

        artist = "三无MarBlue";
        cover = "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951162920302240&auth=5d4a1cdafaf41bc06afa1a7e2822e3298fd245df3b70f37924ab512d5bd693e6";
        lrc = "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=476114873&auth=8fbf2662e9210a5cd5be15bd5dd0b757d6ca8c7dda19ff9e58aa394ec75eef4d";
        name= "达拉崩吧（Cover 洛天依&言和）";
        url= "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=476114873&auth=7033954f7e5af50528ecc8f4a56d1aae68696190711d64764bcd9b591f9e5240";

        artist= "漆柚 / 凯玟桑";
        cover= "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951163051228672&auth=747a9d9ef58e8b40cc5b906d4274490f753e99bca00a9ddc23a8f9fc82f7a7e6";
        lrc="https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=515649515&auth=2f5c49fbafdc01933f34ed7dd138cba477144482de546bcc074fce4a3814213f";
        name="大小姐和大少爷的反派生涯（Cover 洛天依）";
        url= "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=515649515&auth=22331e6684cbfa3b5bcea930df4e0de4f4ec93c4ac547adbd2e8984397fb28fc";

        artist=  "Akie秋绘";
        cover=  "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951163039238417&auth=bd2816b9fce37471f5459f25d75e17aa22dfd081903e884a61719e6507f902cd";
        lrc=  "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=511759501&auth=fae2fa6ac2d6682e43ccf76ee3d13fd967ba04dbe8eb16062f40d69a40340465";
        name=  "女孩你为何踮脚尖（Cover 洛天依 / 双笙）";
        url=  "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=511759501&auth=327a1cea8d6b0256a84c0ad51bd8b70ec78f0a72b625d04c8d88a2c6f10721b4";

        artist= "三无MarBlue";
        cover= "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=109951162920302240&auth=5d4a1cdafaf41bc06afa1a7e2822e3298fd245df3b70f37924ab512d5bd693e6";
        lrc= "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=445816167&auth=9c4b1aca3d737c789e4bd89010e03766958a19dc4ad2e4c1669d31bd4e7b31e6";
        name= "权御天下（Cover 洛天依）";
        url= "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=445816167&auth=c7b261e43429a90fb2b638a8f29c8edb361bcb96730889f0c7bb05a7f7e249f1";

        artist= "王菲";
        cover= "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=2542070884980240&auth=ad1eea2f4228a4ca61873978594ea79dc7ebac7497be81b38e49fa762c658c6c";
        lrc= "https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=29713754&auth=78b1d5fea1dacfe7becf63a2edeefc16e56731836fba012bad11d26434848a01";
        name= "匆匆那年";
        url= "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=29713754&auth=143a86f5d53655ae76a1d926be9721ce4c94465c561b2bda0c105a5db0fe7bf8";

        artist= "泠鸢yousa";
        cover= "https://api.i-meto.com/api/v1/meting?server=netease&type=pic&id=3415083117091734&auth=0ca93527298443cfb19be2cba151835bdbaf05aa22f75e1b6e15a1db79d9bbd9";
        lrc="https://api.i-meto.com/api/v1/meting?server=netease&type=lrc&id=29753702&auth=9d138e31faf1979295062b45eadded99b63e8ad6876d9f586ec0cf3bea9e9e51";
        name= "神的随波逐流";
        url= "https://api.i-meto.com/api/v1/meting?server=netease&type=url&id=29753702&auth=71b37f5118395b9766c57cc978788879cb5b67395a2fdea37146b19c08e147e5";
        music.setName(name);
        music.setArtist(artist);
        music.setLrc(lrc);
        music.setTheme("#ebd0c2");
        music.setUrl(url);
        music.setCover(cover);
        MusicImpl music1 = new MusicImpl() ;
        music1.save(music);
    }
}
