/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "users_has_videos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsersHasVideos.findAll", query = "SELECT u FROM UsersHasVideos u"),
    @NamedQuery(name = "UsersHasVideos.findByUsersUsername", query = "SELECT u FROM UsersHasVideos u WHERE u.usersHasVideosPK.usersUsername = :usersUsername"),
    @NamedQuery(name = "UsersHasVideos.findByVideosVideoName", query = "SELECT u FROM UsersHasVideos u WHERE u.usersHasVideosPK.videosVideoName = :videosVideoName")})
public class UsersHasVideos implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected UsersHasVideosPK usersHasVideosPK;
    @ManyToMany(mappedBy = "usersHasVideosList")
    private List<UsersHasDocuments> usersHasDocumentsList;
    @JoinColumns({
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false),
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false)})
    @OneToOne(optional = false)
    private Users users;
    @JoinColumns({
        @JoinColumn(name = "Videos_VideoName", referencedColumnName = "VideoName", insertable = false, updatable = false),
        @JoinColumn(name = "Videos_VideoName", referencedColumnName = "VideoName", insertable = false, updatable = false),
        @JoinColumn(name = "Videos_VideoName", referencedColumnName = "VideoName", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private Videos videos;

    public UsersHasVideos() {
    }

    public UsersHasVideos(UsersHasVideosPK usersHasVideosPK) {
        this.usersHasVideosPK = usersHasVideosPK;
    }

    public UsersHasVideos(String usersUsername, String videosVideoName) {
        this.usersHasVideosPK = new UsersHasVideosPK(usersUsername, videosVideoName);
    }

    public UsersHasVideosPK getUsersHasVideosPK() {
        return usersHasVideosPK;
    }

    public void setUsersHasVideosPK(UsersHasVideosPK usersHasVideosPK) {
        this.usersHasVideosPK = usersHasVideosPK;
    }

    @XmlTransient
    public List<UsersHasDocuments> getUsersHasDocumentsList() {
        return usersHasDocumentsList;
    }

    public void setUsersHasDocumentsList(List<UsersHasDocuments> usersHasDocumentsList) {
        this.usersHasDocumentsList = usersHasDocumentsList;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Videos getVideos() {
        return videos;
    }

    public void setVideos(Videos videos) {
        this.videos = videos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usersHasVideosPK != null ? usersHasVideosPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsersHasVideos)) {
            return false;
        }
        UsersHasVideos other = (UsersHasVideos) object;
        if ((this.usersHasVideosPK == null && other.usersHasVideosPK != null) || (this.usersHasVideosPK != null && !this.usersHasVideosPK.equals(other.usersHasVideosPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Database.UsersHasVideos[ usersHasVideosPK=" + usersHasVideosPK + " ]";
    }
    
}
