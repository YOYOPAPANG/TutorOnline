/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "videos_has_users")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VideosHasUsers.findAll", query = "SELECT v FROM VideosHasUsers v"),
    @NamedQuery(name = "VideosHasUsers.findByHistoryID", query = "SELECT v FROM VideosHasUsers v WHERE v.historyID = :historyID"),
    @NamedQuery(name = "VideosHasUsers.findByUser", query = "SELECT v FROM VideosHasUsers v WHERE v.usersUsername.username = :username")})
public class VideosHasUsers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "HistoryID")
    private String historyID;
    @JoinColumn(name = "Users_Username", referencedColumnName = "Username")
    @ManyToOne(optional = false)
    private Users usersUsername;
    @JoinColumn(name = "Videos_VideoName", referencedColumnName = "VideoName")
    @ManyToOne(optional = false)
    private Videos videosVideoName;

    public VideosHasUsers() {
    }

    public VideosHasUsers(String historyID, Users usersUsername, Videos videosVideoName) {
        this.historyID = historyID;
        this.usersUsername = usersUsername;
        this.videosVideoName = videosVideoName;
    }

    public VideosHasUsers(Users u, Videos video) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getHistoryID() {
        return historyID;
    }

    public void setHistoryID(String historyID) {
        this.historyID = historyID;
    }

    public Users getUsersUsername() {
        return usersUsername;
    }

    public void setUsersUsername(Users usersUsername) {
        this.usersUsername = usersUsername;
    }

    public Videos getVideosVideoName() {
        return videosVideoName;
    }

    public void setVideosVideoName(Videos videosVideoName) {
        this.videosVideoName = videosVideoName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (historyID != null ? historyID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VideosHasUsers)) {
            return false;
        }
        VideosHasUsers other = (VideosHasUsers) object;
        if ((this.historyID == null && other.historyID != null) || (this.historyID != null && !this.historyID.equals(other.historyID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return  historyID;
    }

}
