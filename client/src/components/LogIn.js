import { useState } from "react";
import { useNavigate } from "react-router";

const LogIn = ({ updateUser }) => {
  const [formData, setFormData] = useState({
    username: "",
    password: "",
  });
  const [errors, setErrors] = useState(false);
  const {username, password} = formData;
  const navigate = useNavigate();

  function onSubmit(e) {
    e.preventDefault();
    const user = {
      username,
      password,
    };
    // Logs in user
    fetch(`/login`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(user),
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          updateUser(user);
          navigate(`/user`);
        });
      } else {
        res.json().then((json) => setErrors(json.error));
      }
    });
  }

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  return (
    <div>
      <form onSubmit={onSubmit}>
        <h1>Login</h1>
        <label>Username</label>
        <input
          type="text"
          name="username"
          value={username}
          onChange={handleChange}
          placeholder="Username"
        />
        <label>Password</label>
        <input
          type="password"
          placeholder="Password"
          name="password"
          value={password}
          onChange={handleChange}
        />
        <button type="submit" value="Log in!" className="log">
          Log In!
        </button>
      </form>
    </div>
  );
};
export default LogIn;
