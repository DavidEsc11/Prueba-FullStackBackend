const axios = require('axios');


async function getPopularRepos(username) {
  try {
 
    const response = await axios.get(`https://api.github.com/users/${username}/repos?per_page=100`);
    
    
    const sortedRepos = response.data.sort((a, b) => b.stargazers_count - a.stargazers_count);
    
    
    const topRepos = sortedRepos.slice(0, 10);

    return topRepos;
  } catch (error) {
    console.error('Error al obtener repositorios:', error.response ? error.response.data : error.message);
    return null;
  }
}


getPopularRepos('google')
  .then(repos => {
    if (repos) {
      console.log('Los 10 repositorios más populares de Google en GitHub son:');
      repos.forEach(repo => {
        console.log(`${repo.name} - Estrellas: ${repo.stargazers_count}`);
      });
    }
  })
  .catch(error => console.error('Error:', error));
