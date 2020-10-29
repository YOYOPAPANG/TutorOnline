/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

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
public class UsersHasDocumentsPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Users_Username")
    private String usersUsername;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Documents_DocumentName")
    private String documentsDocumentName;

    public UsersHasDocumentsPK() {
    }

    public UsersHasDocumentsPK(String usersUsername, String documentsDocumentName) {
        this.usersUsername = usersUsername;
        this.documentsDocumentName = documentsDocumentName;
    }

    public String getUsersUsername() {
        return usersUsername;
    }

    public void setUsersUsername(String usersUsername) {
        this.usersUsername = usersUsername;
    }

    public String getDocumentsDocumentName() {
        return documentsDocumentName;
    }

    public void setDocumentsDocumentName(String documentsDocumentName) {
        this.documentsDocumentName = documentsDocumentName;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usersUsername != null ? usersUsername.hashCode() : 0);
        hash += (documentsDocumentName != null ? documentsDocumentName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof UsersHasDocumentsPK)) {
            return false;
        }
        UsersHasDocumentsPK other = (UsersHasDocumentsPK) object;
        if ((this.usersUsername == null && other.usersUsername != null) || (this.usersUsername != null && !this.usersUsername.equals(other.usersUsername))) {
            return false;
        }
        if ((this.documentsDocumentName == null && other.documentsDocumentName != null) || (this.documentsDocumentName != null && !this.documentsDocumentName.equals(other.documentsDocumentName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Java.UsersHasDocumentsPK[ usersUsername=" + usersUsername + ", documentsDocumentName=" + documentsDocumentName + " ]";
    }
    
}
