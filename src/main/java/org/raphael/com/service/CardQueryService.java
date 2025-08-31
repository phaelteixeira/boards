package org.raphael.com.service;


import lombok.AllArgsConstructor;
import org.raphael.com.dto.CardDetailsDTO;
import org.raphael.com.persistence.dao.CardDAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Optional;

@AllArgsConstructor
public class CardQueryService {

    private final Connection connection;

    public Optional<CardDetailsDTO> findById(final Long id) throws SQLException {
        var dao = new CardDAO(connection);
        return dao.findById(id);
    }

}
