package dto;

public class Board {
    private int boardID;
    private String userID;
    private String boardWriter;
    private String boardTitle;
    private String boardContent;
    private int hit;
    private String ip;
    private String boardDate;
    private String updateDate;

    public Board() {}

    public Board(int boardID, String userID, String boardWriter, String boardTitle, String boardContent, int hit, String ip, String boardDate, String updateDate) {
        this.boardID = boardID;
        this.userID = userID;
        this.boardWriter = boardWriter;
        this.boardTitle = boardTitle;
        this.boardContent = boardContent;
        this.hit = hit;
        this.ip = ip;
        this.boardDate = boardDate;
        this.updateDate = updateDate;
    }

    // Getter & Setter
    public int getBoardID() { return boardID; }
    public void setBoardID(int boardID) { this.boardID = boardID; }

    public String getUserID() { return userID; }
    public void setUserID(String userID) { this.userID = userID; }

    public String getBoardWriter() { return boardWriter; }
    public void setBoardWriter(String boardWriter) { this.boardWriter = boardWriter; }

    public String getBoardTitle() { return boardTitle; }
    public void setBoardTitle(String boardTitle) { this.boardTitle = boardTitle; }

    public String getBoardContent() { return boardContent; }
    public void setBoardContent(String boardContent) { this.boardContent = boardContent; }

    public int getHit() { return hit; }
    public void setHit(int hit) { this.hit = hit; }

    public String getIp() { return ip; }
    public void setIp(String ip) { this.ip = ip; }

    public String getBoardDate() { return boardDate; }
    public void setBoardDate(String boardDate) { this.boardDate = boardDate; }

    public String getUpdateDate() { return updateDate; }
    public void setUpdateDate(String updateDate) { this.updateDate = updateDate; }
}
