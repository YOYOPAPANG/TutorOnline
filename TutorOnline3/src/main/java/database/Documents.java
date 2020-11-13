/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "documents")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Documents.findAll", query = "SELECT d FROM Documents d"),
    @NamedQuery(name = "Documents.findByDocumentName", query = "SELECT d FROM Documents d WHERE d.documentName = :documentName"),
    @NamedQuery(name = "Documents.findByDocumentURL", query = "SELECT d FROM Documents d WHERE d.documentURL = :documentURL")})
public class Documents implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "DocumentName")
    private String documentName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 250)
    @Column(name = "DocumentURL")
    private String documentURL;
    @JoinTable(name = "users_has_documents", joinColumns = {
        @JoinColumn(name = "Documents_DocumentName", referencedColumnName = "DocumentName")}, inverseJoinColumns = {
        @JoinColumn(name = "Users_Username", referencedColumnName = "Username")})
    @ManyToMany
    private List<Users> usersList;
    @JoinColumn(name = "Subjects_SubjectName", referencedColumnName = "SubjectName")
    @ManyToOne(optional = false)
    private Subjects subjectsSubjectName;

    public Documents() {
    }

    public Documents(String documentName) {
        this.documentName = documentName;
    }

    public Documents(String documentName, String documentURL) {
        this.documentName = documentName;
        this.documentURL = documentURL;
    }

    public String getDocumentName() {
        return documentName;
    }

    public void setDocumentName(String documentName) {
        this.documentName = documentName;
    }

    public String getDocumentURL() {
        return documentURL;
    }

    public void setDocumentURL(String documentURL) {
        this.documentURL = documentURL;
    }

    @XmlTransient
    public List<Users> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }

    public Subjects getSubjectsSubjectName() {
        return subjectsSubjectName;
    }

    public void setSubjectsSubjectName(Subjects subjectsSubjectName) {
        this.subjectsSubjectName = subjectsSubjectName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (documentName != null ? documentName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Documents)) {
            return false;
        }
        Documents other = (Documents) object;
        if ((this.documentName == null && other.documentName != null) || (this.documentName != null && !this.documentName.equals(other.documentName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return documentName;
    }
    
}
