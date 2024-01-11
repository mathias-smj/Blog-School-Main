<div class="container-center">
    <div class="card-login card-login--big">
        <h2>Register</h2>
        <form method="post" action="/register">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="/login">Login</a></p>
    </div>
</div>