cat response | grep -o 'name="lt".* />' | cut -c 18- | rev | cut -c 5- | rev
