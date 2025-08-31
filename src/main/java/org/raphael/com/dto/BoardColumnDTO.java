package org.raphael.com.dto;

import org.raphael.com.persistence.entity.BoardColumnKindEnum;

public record BoardColumnDTO(Long id,
                             String name,
                             BoardColumnKindEnum kind,
                             int cardsAmount) {
}