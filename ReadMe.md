Clone o repositório:
```
git clone https://github.com/especializati/setup-docker-laravel.git
```

Copiar o arquivo .env:
```
cp .env.example .env
```

Atualizar as variáveis de ambiente do .env:
```
APP_NAME=Laravel
APP_URL=http://localhost

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=
```

Subir o container:
```
docker-compose up -d
```

Executar comando no container:
```
docker-compose exec app bash
```

Gerar a chave do projeto Laravel
```
php artisan key:generate
```
