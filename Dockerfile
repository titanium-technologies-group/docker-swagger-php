FROM tico/composer

RUN composer global require -a --prefer-stable zircote/swagger-php
RUN printf "#!/usr/bin/env sh\nexec $COMPOSER_HOME/vendor/bin/openapi \$@" > /docker-entrypoint.sh
WORKDIR /app
