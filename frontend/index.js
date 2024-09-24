import { backend } from 'declarations/backend';

document.getElementById('factButton').addEventListener('click', async () => {
  const factContainer = document.getElementById('factContainer');
  factContainer.innerText = 'Loading...';
  try {
    const fact = await backend.getRandomFact();
    factContainer.innerText = fact;
  } catch (error) {
    factContainer.innerText = 'Failed to fetch a fact. Please try again.';
    console.error('Error fetching fact:', error);
  }
});
