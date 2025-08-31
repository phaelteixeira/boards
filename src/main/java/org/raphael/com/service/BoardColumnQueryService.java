package org.raphael.com.service;


import lombok.AllArgsConstructor;
import org.raphael.com.persistence.dao.BoardColumnDAO;
import org.raphael.com.persistence.entity.BoardColumnEntity;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Optional;

@AllArgsConstructor
public class BoardColumnQueryService {

    private final Connection connection;

    public Optional<BoardColumnEntity> findById(final long id) throws SQLException {
        var dao = new BoardColumnDAO(connection);
        return dao.findById(id);
    }

}
