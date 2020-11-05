/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "videos_has_users")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "VideosHasUsers.findAll", query = "SELECT v FROM VideosHasUsers v"),
    @NamedQuery(name = "VideosHasUsers.findByVideosVideoName", query = "SELECT v FROM VideosHasUsers v WHERE v.videosHasUsersPK.videosVideoName = :videosVideoName"),
    @NamedQuery(name = "VideosHasUsers.findByUsersUsername", query = "SELECT v FROM VideosHasUsers v WHERE v.videosHasUsersPK.usersUsername = :usersUsername")})
public class VideosHasUsers implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected VideosHasUsersPK videosHasUsersPK;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "videosHasUsers")
    private List<Histories> historiesList;
    @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Users users;
    @JoinColumn(name = "Videos_VideoName", referencedColumnName = "VideoName", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Videos videos;

    public VideosHasUsers() {
    }

    public VideosHasUsers(VideosHasUsersPK videosHasUsersPK) {
        this.videosHasUsersPK = videosHasUsersPK;
    }

    public VideosHasUsers(String videosVideoName, String usersUsername) {
        this.videosHasUsersPK = new VideosHasUsersPK(videosVideoName, usersUsername);
    }

    public VideosHasUsersPK getVideosHasUsersPK() {
        return videosHasUsersPK;
    }

    public void setVideosHasUsersPK(VideosHasUsersPK videosHasUsersPK) {
        this.videosHasUsersPK = videosHasUsersPK;
    }

    @XmlTransient
    public List<Histories> getHistoriesList() {
        return historiesList;
    }

    public void setHistoriesList(List<Histories> historiesList) {
        this.historiesList = historiesList;
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
        hash += (videosHasUsersPK != null ? videosHasUsersPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VideosHasUsers)) {
            return false;
        }
        VideosHasUsers other = (VideosHasUsers) object;
        if ((this.videosHasUsersPK == null && other.videosHasUsersPK != null) || (this.videosHasUsersPK != null && !this.videosHasUsersPK.equals(other.videosHasUsersPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "database.VideosHasUsers[ videosHasUsersPK=" + videosHasUsersPK + " ]";
    }
    
}
