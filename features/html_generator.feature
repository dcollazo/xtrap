Feature: HTML Generator

  After I generate a new HTML directory
  All of the requirements should be present
  
  Scenario: Initial generation
    When I run "xtrap html test"
    Then the following files should exist:
      | test/index.html         |
      | test/css/stylesheet.css |
      | test/js/javascript.js   |
    Then the file "test/index.html" should contain:
      """
      #### External Libraries ####
      Links to external libraries go here.

      #### Local Files ####
      Links to local files go here
      """
      
  Scenario: Generated index file includes jQuery
    When the HTML generator is run
    Then the generated index file should be able to call jQuery methods

  Scenario: Generated index file includes AngularJS
    When the HTML generator is run
    Then the generated index file should be able to call AngularJS methods

  Scenario: Generated index file includes project name
    When the HTML generator is run
    Then the generated index title should be the project name

  Scenario: Generated index file includes local source links
    When the HTML generator is run
    Then the generated index file should include CSS from name/stylesheets/style.css
    And it should also include Javascript from name/js/javascript.css