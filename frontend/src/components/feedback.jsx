import React, { useState } from 'react';

function FeedbackPage() {
  const [feedback, setFeedback] = useState('');
  const buttonStyle = { 
    marginTop : "5px" ,
    backgroundColor: "#008CBA" , 
    color :"white" , 
    height : "40px" , 
    width : "150px"
  };

  const textareaStyle = {
    width: '60%',
    height: '200px', 
    border: '1px solid #ccc',
    padding: '10px' 
  };

  const feedbackstyle = {
      marginLeft : "350px" , 
      marginTop : "150px" , 
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setFeedback(''); 
  };

  return (
    <div style = {feedbackstyle}>
      <form   onSubmit={handleSubmit}>
        <div   >
          <h1> <b> Feedback form for Studypal </b></h1>
          <label style={ {"display" : "block"} }> <b> Your Feedback:</b></label>
          <textarea
            id="feedback"
            name="feedback"
            value={feedback}
            onChange={(e) => setFeedback(e.target.value)}
            rows="4"
            cols="50"
            style={textareaStyle}
          />
          </div>
       
          <button style={buttonStyle} type="submit">Submit Feedback</button>
        
      </form>
    </div>
  );
}
export default FeedbackPage;

