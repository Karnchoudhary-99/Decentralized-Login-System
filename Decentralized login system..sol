// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract DecentralizedLoginSystem {

    struct Project {
        string title;
        string description;
    }

    Project public project;

    constructor(string memory _title, string memory _description) {
        project = Project(_title, _description);
    }

    function getProjectDetails() public view returns (string memory, string memory) {
        return (project.title, project.description);
    }

    function updateProjectDetails(string memory _title, string memory _description) public {
        project.title = _title;
        project.description = _description;
    }
}

