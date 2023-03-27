import type { AppProps } from "next/app";
import { client } from "twirpscript";

client.baseURL = "http://localhost:8080";
client.prefix = "/api";

function MyApp({ Component, pageProps }: AppProps) {
  return <Component {...pageProps} />;
}

export default MyApp;
