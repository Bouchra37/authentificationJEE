/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.projet.entity;

import java.util.Date;
import javax.persistence.Entity;

/**
 *
 * @author Lachgar
 */
@Entity
public class Client extends User {
    private String nom;
    private String prenom;
    private Date date;

    public Client() {
    }

    public Client(String nom, String prenom, Date date, String email, String password, String role, int code) {
        super(email, password, role, code);
        this.nom = nom;
        this.prenom = prenom;
        this.date = date;
    }

    public Client(String nom, String prenom, Date date, String email, String password) {
        super(email, password);
        this.nom = nom;
        this.prenom = prenom;
        this.date = date;
        setRole("Client");
    }

    
    
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Client)) {
            return false;
        }
        Client other = (Client) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ma.projet.entity.Client[ id=" + id + " ]";
    }
    
}
