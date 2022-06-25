import React from 'react';


const Form = ({setInputText,setInputTag, todos, setTodos, inputText,setStatus,inputTag}) =>{
    const inputTextHandler = (e) =>{
        setInputText(e.target.value);
    }
    const inputTagHandler = (e) =>{
        setInputTag(e.target.value);
    }
    const submitToDoHandler = (e) => {
        e.preventDefault();
        setTodos([
            ...todos,
            {text: inputText, completed:false, id: Math.random()*1000,tag:inputTag}
        ]);
        setInputText("");
        setInputTag("");
    }
    const statusHandler = (e) =>{
        setStatus(e.target.value);

    }
    return(
        <form>
            <input onChange= {inputTextHandler} type="text" className="todo-input" value={inputText}/>
            <input onChange= {inputTagHandler} type="text" className="todo-tag" value={inputTag}/>
            <button onClick = {submitToDoHandler} disabled={!inputText} className="todo-button" type="submit">
                <i className="fas fa-plus-square" ></i>
            </button>
            <div className="select">
                <select onChange={statusHandler} name="todos" className="filter-todo">
                    <option value="all">All</option>
                    <option value="completed">Completed</option>
                    <option value="uncomplete">Uncomplete</option>
                </select>
            </div>
        </form>

    );
};

export default Form;