package Entity;

public class Cart extends Food {
    private int orderID;
    private int userID;
    private int quantity;
    private float total;
    private String dateCreate;
    private String nguoiNhan;
    private String diaChiNhan;
    private String soDT;

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getOrderID() {
        return orderID;
    }
    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }
    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public String getDateCreate() {
        return dateCreate;
    }
    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public String getNguoiNhan() {
        return nguoiNhan;
    }

    public void setNguoiNhan(String nguoiNhan) {
        this.nguoiNhan = nguoiNhan;
    }

    public String getDiaChiNhan() {
        return diaChiNhan;
    }

    public void setDiaChiNhan(String diaChiNhan) {
        this.diaChiNhan = diaChiNhan;
    }

    public String getSoDT() {
        return soDT;
    }

    public void setSoDT(String soDT) {
        this.soDT = soDT;
    }

    public Cart(int orderID, int userID, int quantity, String dateCreate, String nguoiNhan, String diaChiNhan, String soDT, float total) {
        super();
        this.orderID = orderID;
        this.userID = userID;
        this.quantity = quantity;
        this.dateCreate = dateCreate;
        this.nguoiNhan = nguoiNhan;
        this.diaChiNhan = diaChiNhan;
        this.soDT = soDT;
        this.total = total;
    }
    public Cart( int userID, int quantity, String dateCreate, String nguoiNhan, String diaChiNhan, String soDT,  float total) {
        super();
        this.userID = userID;
        this.quantity = quantity;
        this.dateCreate = dateCreate;
        this.nguoiNhan = nguoiNhan;
        this.diaChiNhan = diaChiNhan;
        this.soDT = soDT;
        this.total = total;
    }
    public Cart() {

    }

}
