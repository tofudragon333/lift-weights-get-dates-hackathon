import { useState } from "react";
import { useNavigate } from "react-router";

const SignUp = () => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
    first_name: "",
    last_name: "",
    goal_weight: "",
    current_weight: "",
  });
  const [errors, setErrors] = useState([]);
  const navigate = useNavigate();

  const {
    username,
    password,
    first_name,
    last_name,
    goal_weight,
    current_weight,
  } = formData;

  function onSubmit(e) {
    e.preventDefault();
    const user = {
      username,
      password,
      first_name,
      last_name,
      goal_weight,
      current_weight,
    };

    fetch(`/users`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(user),
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          navigate(`/login`);
        });
      } else {
        res.json().then((json) => setErrors(Object.entries(json.errors)));
      }
    });
  }

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };
  return (
    <div>
      <form className="form-data" onSubmit={onSubmit}>
        <label>Username</label>
        <input
          type="text"
          name="username"
          value={username}
          onChange={handleChange}
          placeholder="username"
        />

        <label>Password</label>
        <input
          type="password"
          name="password"
          value={password}
          onChange={handleChange}
          placeholder="secret"
        />
        <label>First Name</label>
        <input
          type="test"
          placeholder="optional"
          name="first_name"
          value={first_name}
          onChange={handleChange}
        />
        <label>Current Weight</label>
        <input
          type="text"
          name="current_weight"
          value={current_weight}
          onChange={handleChange}
          placeholder="optional"
        />
        <label>Goal Weight</label>
        <input
          type="text"
          name="goal_weight"
          value={goal_weight}
          onChange={handleChange}
          placeholder="optional"
        />
        <button type="submit" value="Log in!" className="signup-button">
          Sign Up!
        </button>
      </form>
    </div>
  );
};
export default SignUp;
