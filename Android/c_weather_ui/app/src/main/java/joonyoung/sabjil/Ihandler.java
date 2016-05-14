package joonyoung.sabjil;

/**
 * Created by mydre on 2016-04-13.
 */
public class Ihandler {
    int Clock;

    //위치에 대한 값으로 인포를 가져옵니다.
    Info getInfo(String loc){
        Info info = new Info(loc);
        return info;
    }
    void setClock(int i){
        this.Clock=i;
    } //업데이트 타임을 갱신합니다.
}
