import { NavLink } from "react-router-dom"

const NavBar = () => {
    return (
        <div>
            <NavLink to={'/'}>Home</NavLink>
            <NavLink to={'/login'}>Log-In</NavLink>
            <NavLink to={'/signup'}>Sign-Up</NavLink>
        </div>
    )
}

export default NavBar