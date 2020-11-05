/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author ASUS
 */
@Embeddable
public class VideosHasUsersPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Videos_VideoName")
    private String videosVideoName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Users_Username")
    private String usersUsername;

    public VideosHasUsersPK() {
    }

    public VideosHasUsersPK(String videosVideoName, String usersUsername) {
        this.videosVideoName = videosVideoName;
        this.usersUsername = usersUsername;
    }

    public String getVideosVideoName() {
        return videosVideoName;
    }

    public void setVideosVideoName(String videosVideoName) {
        this.videosVideoName = videosVideoName;
    }

    public String getUsersUsername() {
        return usersUsername;
    }

    public void setUsersUsername(String usersUsername) {
        this.usersUsername = usersUsername;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (videosVideoName != null ? videosVideoName.hashCode() : 0);
        hash += (usersUsername != null ? usersUsername.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof VideosHasUsersPK)) {
            return false;
        }
        VideosHasUsersPK other = (VideosHasUsersPK) object;
        if ((this.videosVideoName == null && other.videosVideoName != null) || (this.videosVideoName != null && !this.videosVideoName.equals(other.videosVideoName))) {
            return false;
        }
        if ((this.usersUsername == null && other.usersUsername != null) || (this.usersUsername != null && !this.usersUsername.equals(other.usersUsername))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "database.VideosHasUsersPK[ videosVideoName=" + videosVideoName + ", usersUsername=" + usersUsername + " ]";
    }
    
}
