FROM denoland/deno:1.42.1

EXPOSE 8080

WORKDIR /app

USER deno

COPY ./src .

RUN deno cache main.ts

EXPOSE 8080

CMD ["run", "-A", "--unstable-net", "spawn.ts"]
