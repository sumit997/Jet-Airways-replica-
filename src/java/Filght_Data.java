

public class Filght_Data {
    public String Plane_No;
    public String Flight_Origin;
    public String Flight_Destination;
    public String City_served;
    public String Flight_Duration;
    public String Flight_Type;
    public String Economy_Seat;
    public String Business_Seat;
    public String Plane_timing;

    public Filght_Data(String Plane_No, String Flight_Origin, String Flight_Destination, String City_served, String Flight_Duration, String Flight_Type, String Economy_Seat, String Business_Seat, String Plane_timing) {
        this.Plane_No = Plane_No;
        this.Flight_Origin = Flight_Origin;
        this.Flight_Destination = Flight_Destination;
        this.City_served = City_served;
        this.Flight_Duration = Flight_Duration;
        this.Flight_Type = Flight_Type;
        this.Economy_Seat = Economy_Seat;
        this.Business_Seat = Business_Seat;
        this.Plane_timing = Plane_timing;
    }

   
    public Filght_Data() {
        
    }
    
    public String getPlane_No() {
        return Plane_No;
    }

    public void setPlane_No(String Plane_No) {
        this.Plane_No = Plane_No;
    }

    public String getFlight_Origin() {
        return Flight_Origin;
    }

    public void setFlight_Origin(String Flight_Origin) {
        this.Flight_Origin = Flight_Origin;
    }

    public String getFlight_Destination() {
        return Flight_Destination;
    }

    public void setFlight_Destination(String Flight_Destination) {
        this.Flight_Destination = Flight_Destination;
    }

    public String getCity_served() {
        return City_served;
    }

    public void setCity_served(String City_served) {
        this.City_served = City_served;
    }

    public String getFlight_Duration() {
        return Flight_Duration;
    }

    public void setFlight_Duration(String Flight_Duration) {
        this.Flight_Duration = Flight_Duration;
    }

    public String getFlight_Type() {
        return Flight_Type;
    }

    public void setFlight_Type(String Flight_Type) {
        this.Flight_Type = Flight_Type;
    }

    public String getEconomy_Seat() {
        return Economy_Seat;
    }

    public void setEconomy_Seat(String Economy_Seat) {
        this.Economy_Seat = Economy_Seat;
    }

    public String getBusiness_Seat() {
        return Business_Seat;
    }

    public void setBusiness_Seat(String Business_Seat) {
        this.Business_Seat = Business_Seat;
    }
    public String getPlane_timing() {
        return Plane_timing;
    }

    public void setPlane_timing(String Plane_timing) {
        this.Plane_timing = Plane_timing;
    }
}
  