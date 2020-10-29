/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
@Table(name = "educations")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Educations.findAll", query = "SELECT e FROM Educations e"),
    @NamedQuery(name = "Educations.findByEducationName", query = "SELECT e FROM Educations e WHERE e.educationName = :educationName")})
public class Educations implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "EducationName")
    private String educationName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "educations")
    private List<Subjects> subjectsList;

    public Educations() {
    }

    public Educations(String educationName) {
        this.educationName = educationName;
    }

    public String getEducationName() {
        return educationName;
    }

    public void setEducationName(String educationName) {
        this.educationName = educationName;
    }

    @XmlTransient
    public List<Subjects> getSubjectsList() {
        return subjectsList;
    }

    public void setSubjectsList(List<Subjects> subjectsList) {
        this.subjectsList = subjectsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (educationName != null ? educationName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Educations)) {
            return false;
        }
        Educations other = (Educations) object;
        if ((this.educationName == null && other.educationName != null) || (this.educationName != null && !this.educationName.equals(other.educationName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Java.Educations[ educationName=" + educationName + " ]";
    }
    
}
