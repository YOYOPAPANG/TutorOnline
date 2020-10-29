/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "videos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Videos.findAll", query = "SELECT v FROM Videos v"),
    @NamedQuery(name = "Videos.findByVideoName", query = "SELECT v FROM Videos v WHERE v.videoName = :videoName"),
    @NamedQuery(name = "Videos.findByVideoURL", query = "SELECT v FROM Videos v WHERE v.videoURL = :videoURL")})
public class Videos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "VideoName")
    private String videoName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "VideoURL")
    private String videoURL;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "videos")
    private List<UsersHasVideos> usersHasVideosList;
    @JoinColumns({
        @JoinColumn(name = "Subjects_SubjectName", referencedColumnName = "SubjectName"),
        @JoinColumn(name = "Subjects_SubjectName", referencedColumnName = "SubjectName")})
    @ManyToOne(optional = false)
    private Subjects subjects;

    public Videos() {
    }

    public Videos(String videoName) {
        this.videoName = videoName;
    }

    public Videos(String videoName, String videoURL) {
        this.videoName = videoName;
        this.videoURL = videoURL;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public String getVideoURL() {
        return videoURL;
    }

    public void setVideoURL(String videoURL) {
        this.videoURL = videoURL;
    }

    @XmlTransient
    public List<UsersHasVideos> getUsersHasVideosList() {
        return usersHasVideosList;
    }

    public void setUsersHasVideosList(List<UsersHasVideos> usersHasVideosList) {
        this.usersHasVideosList = usersHasVideosList;
    }

    public Subjects getSubjects() {
        return subjects;
    }

    public void setSubjects(Subjects subjects) {
        this.subjects = subjects;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (videoName != null ? videoName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Videos)) {
            return false;
        }
        Videos other = (Videos) object;
        if ((this.videoName == null && other.videoName != null) || (this.videoName != null && !this.videoName.equals(other.videoName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Database.Videos[ videoName=" + videoName + " ]";
    }
    
}
