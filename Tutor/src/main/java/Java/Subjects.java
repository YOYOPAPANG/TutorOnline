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
@Table(name = "subjects")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Subjects.findAll", query = "SELECT s FROM Subjects s"),
    @NamedQuery(name = "Subjects.findBySubjectName", query = "SELECT s FROM Subjects s WHERE s.subjectName = :subjectName")})
public class Subjects implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "SubjectName")
    private String subjectName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subjects")
    private List<Documents> documentsList;
    @JoinColumns({
        @JoinColumn(name = "Educations_EducationName", referencedColumnName = "EducationName"),
        @JoinColumn(name = "Educations_EducationName", referencedColumnName = "EducationName")})
    @ManyToOne(optional = false)
    private Educations educations;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subjects")
    private List<Videos> videosList;

    public Subjects() {
    }

    public Subjects(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    @XmlTransient
    public List<Documents> getDocumentsList() {
        return documentsList;
    }

    public void setDocumentsList(List<Documents> documentsList) {
        this.documentsList = documentsList;
    }

    public Educations getEducations() {
        return educations;
    }

    public void setEducations(Educations educations) {
        this.educations = educations;
    }

    @XmlTransient
    public List<Videos> getVideosList() {
        return videosList;
    }

    public void setVideosList(List<Videos> videosList) {
        this.videosList = videosList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (subjectName != null ? subjectName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Subjects)) {
            return false;
        }
        Subjects other = (Subjects) object;
        if ((this.subjectName == null && other.subjectName != null) || (this.subjectName != null && !this.subjectName.equals(other.subjectName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Java.Subjects[ subjectName=" + subjectName + " ]";
    }
    
}
