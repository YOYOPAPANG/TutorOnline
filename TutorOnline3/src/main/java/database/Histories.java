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
import javax.persistence.JoinColumns;
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
@Table(name = "histories")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Histories.findAll", query = "SELECT h FROM Histories h"),
    @NamedQuery(name = "Histories.findByHistoryName", query = "SELECT h FROM Histories h WHERE h.historyName = :historyName")})
public class Histories implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "HistoryName")
    private String historyName;
    @JoinColumns({
        @JoinColumn(name = "Users_has_Documents_Users_Username", referencedColumnName = "Users_Username"),
        @JoinColumn(name = "Users_has_Documents_Documents_DocumentName", referencedColumnName = "Documents_DocumentName")})
    @ManyToOne(optional = false)
    private UsersHasDocuments usersHasDocuments;
    @JoinColumns({
        @JoinColumn(name = "Videos_has_Users_Videos_VideoName", referencedColumnName = "Videos_VideoName"),
        @JoinColumn(name = "Videos_has_Users_Users_Username", referencedColumnName = "Users_Username")})
    @ManyToOne(optional = false)
    private VideosHasUsers videosHasUsers;

    public Histories() {
    }

    public Histories(String historyName) {
        this.historyName = historyName;
    }

    public String getHistoryName() {
        return historyName;
    }

    public void setHistoryName(String historyName) {
        this.historyName = historyName;
    }

    public UsersHasDocuments getUsersHasDocuments() {
        return usersHasDocuments;
    }

    public void setUsersHasDocuments(UsersHasDocuments usersHasDocuments) {
        this.usersHasDocuments = usersHasDocuments;
    }

    public VideosHasUsers getVideosHasUsers() {
        return videosHasUsers;
    }

    public void setVideosHasUsers(VideosHasUsers videosHasUsers) {
        this.videosHasUsers = videosHasUsers;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (historyName != null ? historyName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Histories)) {
            return false;
        }
        Histories other = (Histories) object;
        if ((this.historyName == null && other.historyName != null) || (this.historyName != null && !this.historyName.equals(other.historyName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "database.Histories[ historyName=" + historyName + " ]";
    }
    
}
