cat response | grep -o 'action.*method' | cut -c 9- | rev | cut -c 9- | rev | (printf 'https://cmems-cas.cls.fr' && cat) 
