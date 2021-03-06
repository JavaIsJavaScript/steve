package de.rwth.idsg.steve.ocpp;

import lombok.RequiredArgsConstructor;

/**
 * @author Sevket Goekay <goekay@dbis.rwth-aachen.de>
 * @since 23.11.2015
 */
@RequiredArgsConstructor
public enum TaskOrigin {

    // When the action was triggered by SteVe internally (e.g. by the admin/user)
    INTERNAL,

    // When the action was triggered by an external system (e.g. integrated roaming partner)
    EXTERNAL;
}
