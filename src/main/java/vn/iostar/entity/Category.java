package vn.iostar.entity;

import java.io.Serializable;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "Categorry")
public class Category implements Serializable {

	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "categoryid")
	private Long id;
	@Column(name = "categoryname", columnDefinition = "nvarchar(50)")
	@NotEmpty(message = "Khong duoc rong")
	private String name;
	@Column(name = "images", columnDefinition = "nvarchar(500)")
	private String images;
	private int status;
	
	
	
}
