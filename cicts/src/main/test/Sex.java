public enum Sex {

    MAN("男"),WOMAN("女");

    private String ss;

    public String getSs() {
        return ss;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    Sex() {
    }

    Sex(String ss) {
        this.ss = ss;
    }
}
