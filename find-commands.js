const { readFileSync } = require('fs');

try {
  const file = readFileSync('./package.json');
  const pkg = JSON.parse(file);
  const scripts = Object.keys(pkg.scripts);

  process.stdout.write(scripts.join('\n'));
} catch (error) {}
