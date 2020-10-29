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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "users_has_documents")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UsersHasDocuments.findAll", query = "SELECT u FROM UsersHasDocuments u"),
    @NamedQuery(name = "UsersHasDocuments.findByUsersUsername", query = "SELECT u FROM UsersHasDocuments u WHERE u.usersHasDocumentsPK.usersUsername = :usersUsername"),
    @NamedQuery(name = "UsersHasDocuments.findByDocumentsDocumentName", query = "SELECT u FROM UsersHasDocuments u WHERE u.usersHasDocumentsPK.documentsDocumentName = :documentsDocumentName")})
public class UsersHasDocuments implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected UsersHasDocumentsPK usersHasDocumentsPK;
    @JoinTable(name = "histories", joinColumns = {
        @JoinColumn(name = "Users_has_Documents_Users_Username", referencedColumnName = "Users_Username"),
        @JoinColumn(name = "Users_has_Documents_Users_Username", referencedColumnName = "Users_Username"),
        @JoinColumn(name = "Users_has_Documents_Documents_DocumentName", referencedColumnName = "Documents_DocumentName"),
        @JoinColumn(name = "Users_has_Documents_Documents_DocumentName", referencedColumnName = "Documents_DocumentName")}, inverseJoinColumns = {
        @JoinColumn(name = "Users_has_Videos_Users_Username", referencedColumnName = "Users_Username"),
        @JoinColumn(name = "Users_has_Videos_Users_Username", referencedColumnName = "Users_Username"),
        @JoinColumn(name = "Users_has_Videos_Videos_VideoName", referencedColumnName = "Videos_VideoName"),
        @JoinColumn(name = "Users_has_Videos_Videos_VideoName", referencedColumnName = "Videos_VideoName")})
    @ManyToMany
    private List<UsersHasVideos> usersHasVideosList;
    @JoinColumns({
        @JoinColumn(name = "Documents_DocumentName", referencedColumnName = "DocumentName", insertable = false, updatable = false),
        @JoinColumn(name = "Documents_DocumentName", referencedColumnName = "DocumentName", insertable = false, updatable = false),
        @JoinColumn(name = "Documents_DocumentName", referencedColumnName = "DocumentName", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private Documents documents;
    @JoinColumns({
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false),
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false),
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username", insertable = false, updatable = false)})
    @ManyToOne(optional = false)
    private Users users;

    public UsersHasDocuments() {
    }

    public UsersHasDocuments(UsersHasDocumentsPK usersHasDocumentsPK) {
        this.usersHasDocumentsPK = usersHasDocumentsPK;
    }

    public UsersHasDocuments(String usersUsername, String documentsDocumentName) {
        this.usersHasDocumentsPK = new UsersHasDocumentsPK(usersUsername, documentsDocumentName);
    }

    public UsersHasDocumentsPK getUsersHasDocumentsPK() {
        return usersHasDocumentsPK;
    }

    public void setUsersHasDocumentsPK(UsersHasDocumentsPK usersHasDocumentsPK) {
        this.usersHasDocumentsPK = usersHasDocumentsPK;
    }

    @XmlTransient
    public List<UsersHasVideos> getUsersHasVideosList() {
        return usersHasVideosList;
    }

    public void setUsersHasVideosList(List<UsersHasVideos> usersHasVideosList) {
        this.usersHasVideosList = usersHasVideosList;
    }

    public Documents getDocuments() {
        return documents;
    }

    public void setDocuments(Documents documents) {
        this.documents = documents;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usersHasDocumentsPK != null ? usersHasDocumentsPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsersHasDocuments)) {
            return false;
        }
        UsersHasDocuments other = (UsersHasDocuments) object;
        if ((this.usersHasDocumentsPK == null && other.usersHasDocumentsPK != null) || (this.usersHasDocumentsPK != null && !this.usersHasDocumentsPK.equals(other.usersHasDocumentsPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Java.UsersHasDocuments[ usersHasDocumentsPK=" + usersHasDocumentsPK + " ]";
    }
    
}
