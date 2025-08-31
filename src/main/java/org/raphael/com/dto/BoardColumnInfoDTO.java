package org.raphael.com.dto;

import org.raphael.com.persistence.entity.BoardColumnKindEnum;

public record BoardColumnInfoDTO(Long id, int order, BoardColumnKindEnum kind) {
}
