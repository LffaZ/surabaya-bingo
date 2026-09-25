// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CityBingo {

    string[9] public challenges = [
        "Visit Jl. Tunjungan",
        "Take a photo on Perahu Kalimas",
        "Try local food at Pasar Atom",
        "Visit a cultural spot",
        "Attend an event",
        "Support a local business",
        "Visit Kota Lama",
        "Explore a new area",
        "Ride Bus SSCT with a friend"
    ];

    mapping(address => bool[9]) public completed;

    mapping(address => bool) public hasBingo;

    event ChallengeCompleted(
        address indexed player,
        uint256 indexed challengeId
    );

    event BingoAchieved(
        address indexed player
    );

    function completeChallenge(uint256 id) public {

        require(id < 9, "Invalid challenge");

        require(
            !completed[msg.sender][id],
            "Already completed"
        );

        completed[msg.sender][id] = true;

        emit ChallengeCompleted(
            msg.sender,
            id
        );

        if (checkBingo(msg.sender)) {

            if (!hasBingo[msg.sender]) {

                hasBingo[msg.sender] = true;

                emit BingoAchieved(
                    msg.sender
                );
            }
        }
    }

    function checkBingo(
        address player
    ) public view returns (bool) {

        // Rows

        if (
            completed[player][0] &&
            completed[player][1] &&
            completed[player][2]
        ) return true;

        if (
            completed[player][3] &&
            completed[player][4] &&
            completed[player][5]
        ) return true;

        if (
            completed[player][6] &&
            completed[player][7] &&
            completed[player][8]
        ) return true;


        // Columns

        if (
            completed[player][0] &&
            completed[player][3] &&
            completed[player][6]
        ) return true;

        if (
            completed[player][1] &&
            completed[player][4] &&
            completed[player][7]
        ) return true;

        if (
            completed[player][2] &&
            completed[player][5] &&
            completed[player][8]
        ) return true;


        // Diagonals

        if (
            completed[player][0] &&
            completed[player][4] &&
            completed[player][8]
        ) return true;

        if (
            completed[player][2] &&
            completed[player][4] &&
            completed[player][6]
        ) return true;

        return false;
    }

    function isCompleted(
        address player,
        uint256 id
    ) public view returns (bool) {

        return completed[player][id];

    }
}
