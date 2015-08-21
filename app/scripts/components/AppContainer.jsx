var React = require('react');

var ProfileImage = require('./ProfileImage/ProfileImage');
var ScoreBox = require('./ScoreBox/ScoreBox');
var CoverImage = require('./CoverImage/CoverImage');
var ServicesPanel = require('./ServicesPanel/ServicesPanel');
var QuestionsList = require('./QuestionsList/QuestionsList');

var headerStyle = {
    backgroundColor: '#81d05f',
    height: '200px'
};

var AppContainer = React.createClass({
  render: function() {
    return (
      <div>
          <div style={headerStyle}>
              <CoverImage />
              <ProfileImage />
              <ScoreBox />
              <ServicesPanel />
              <QuestionsList />
          </div>
      </div>
    );
  }
});

module.exports = AppContainer;
