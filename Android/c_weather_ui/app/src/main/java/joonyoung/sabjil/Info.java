package joonyoung.sabjil;

/**
 * Created by mydre on 2016-04-13.
 */
public class Info {
    String Location;
    double Temperature;
    double Humidity;

    public Info(){
    }
    public Info(String loc){
        this.Location = loc;
    }

    public String getLocation(){
        return this.Location;
    }
    public double getTemp(){
        return this.Temperature;
    }
    public double getHumi(){
        return this.Humidity;
    }
}
