package com.devsuperior.dslearn.entities;

import com.devsuperior.dslearn.entities.enums.ResourceType;
import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "tb_resource")
public class Resource {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private Integer position;
    private  String imgUri;
    private ResourceType type;
    private String externalLink;

    @ManyToOne
    private Offer offer;
    @OneToMany(mappedBy = "resource")
    private Set<Section> sections = new HashSet<>();
    public Resource() {
    }

    public Resource(Long id, String title, String description, Integer position, String imgUri, ResourceType resourceType, String externalLink, Offer offer) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.position = position;
        this.imgUri = imgUri;
        this.type = resourceType;
        this.externalLink = externalLink;
        this.offer = offer;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public String getImgUri() {
        return imgUri;
    }

    public void setImgUri(String imgUri) {
        this.imgUri = imgUri;
    }

    public ResourceType getType() {
        return type;
    }

    public void setType(ResourceType type) {
        this.type = type;
    }

    public String getExternalLink() {
        return externalLink;
    }

    public void setExternalLink(String externalLink) {
        this.externalLink = externalLink;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public Set<Section> getSections() {
        return sections;
    }

    public void addSections(Section section) {
        this.sections.add(section);
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Resource resource = (Resource) o;
        return Objects.equals(id, resource.id) && Objects.equals(title, resource.title) && Objects.equals(description, resource.description) && Objects.equals(position, resource.position) && Objects.equals(imgUri, resource.imgUri) && type == resource.type && Objects.equals(externalLink, resource.externalLink);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
