import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App UI',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.red),
              actionsIconTheme: IconThemeData(color: Colors.black),
              centerTitle: true,
              elevation: 10,
              titleTextStyle: TextStyle(color: Colors.black))),
      home: HomePage(),
    );
  }
}

// Home Screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ecom App UI',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-blue-select-2020?wid=940&hei=1112&fmt=png-alpha&.v=1604343704000'),
        ),
        title: Text('Iphone 12'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/GxJLGcjwgFGkIigd5v0MaSvPL2A=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20062658/s20.jpg'),
        ),
        title: Text('Note 20 Ultra'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cnet4.cbsistatic.com/img/7btfz6GJRvV6uOLJOvjWtbFTHUQ=/2020/11/16/a8e0e691-035a-4298-8366-f3b74e1f3792/img-1759.jpg'),
        ),
        title: Text('Macbook air'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/IeahmlU8YxHENz3DxcMxY0-XHx8=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22038522/akramer_201113_4290_0007.0.jpg'),
        ),
        title: Text('Macbook Pro'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://www.cyberpowerpc.com/images/cs/h550/cs-450-150_400.png?v1'),
        ),
        title: Text('Gaming Pc'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://qph.fs.quoracdn.net/main-qimg-b67a4663311af8acfd584553c74c3cf8.webp'),
        ),
        title: Text('Backlit Keyboard'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1564705604164-90e6b60ad7cc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1lcmNlZGVzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
        ),
        title: Text('Mercedes'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSurGrnrxDZDKyl01LQNRyKSKEjWK1c6S3QOA&usqp=CAU'),
        ),
        title: Text('Roadstar'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYYGBgaHBoaGhgaGhoYGBgZGBoaGRgZGBgcIS4lHCEsIRgaJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISGjQhISExNDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDE0NDQ0NDQ1NDQxPz80NDQxNzU0NP/AABEIARMAtwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAECAwUGB//EAD0QAAICAAQEAwYEBAUEAwEAAAECABEDEiExBAVBUWFxkQYTIjKBoUKxwfBSctHhFBUjYvEHkrLCgqLSFv/EABcBAQEBAQAAAAAAAAAAAAAAAAABAgP/xAAcEQEBAQADAQEBAAAAAAAAAAAAARECIUExElH/2gAMAwEAAhEDEQA/ANN0lYEOZYMywgbEEDx0mqEEG4lBKMZ1guIsOxVgjiRQrLIMkJAkHWWMcgbLK2MveUskrKh1lDmEkSLrAEdpWEhWSL3cpqlsOUk1C2SDYiwRH3kiXkchkkWGskWcOjOwVRZOgHidBL+M4DEw/nQr9/Wtp0nsbg4eTFdtwct9tL/VfQwvmaK7ldSWGYH+YAjT1gxwzCUsZocXghGIGxAIHa9x6j7zOfeF4mqPFFCvamg7iEGDuZgRaDYoheTSD4k0msviFgWJD+KgGJMqouQxDJkWZP3eksZ5AnEoeF4qVBnWVIpAjOssyVItCKBLvdXGRdZeNBAFxMMwZ8OaDmDY0AQaSt3l4WJMO2UdyB6mpUH8l4oI74Xcg6/iYD4gOu1ehm778BQ4YhwAortt+/OccrrZI0tswI+Gq2IrbSE/5tiAV8J8SpB+tED7Q2t5q/xjyJ9T/aZb7y4OWJJNk7mV4qwS9p4XD2uaKVriECgYoaextB8Qy0NB8Z5miYeUO0QxYLivKmB+KaANCcdpWuFciqUSSMvKgSnExAJXOqMUwV3Ak8Vrg74RMIqd7jXLPcHeMMOVdOshiPUk7AQZ2uRCbFjXcZEixDCllqSwyNW/hVm+oBr71KUsyxFpHPcovqc5/wDAesqehF4UDSWPw2mktxH0lSY0G0MGoxnMsxyJVmhvigTFJFIpNaetu0FxWhTAQTHMzq4rzXK8RZBcTWXE3DNAuhliihJ4pqDs81EtRxHguIJHG4moL/iNYZyrCs0eW8CuIjjNTgjKNPlo2dfHSB4LRY2M2Gy4qbodR3B0IPhCqeMR0OVxR6How7j+kzmxTO4bJxOEtbOLBO4YdvEE0Qd/rON4/gmRmU7g/symYGd5FGkDhmWJhSIkuJGxHEm/DiUYL4SuPfZ8m3+mATfS7O3etYXDpigSrH4qyEsVq1UbvbfbaGcdzrhVXLh4Oc9SwKj/ALz8d+nnMUYhGKGyhgv4WOUH4TpZ6X614yr+RKI7mkUsd6AvSS4fg8RzSIzHy0+p2EOwvaUsKf4lC0MPKgXatWrMR4GDJxfEuuVGKprWtCuwO5ESreMnyif8Bh4fxY+Iv8iasewJ6QTE5v8ACUREVTeuUFiD36faMnLurkt+UvHDIBQAEGwELA1EUN4zDyqBHkV3bYpiUXqZThPcsfEqYbB4zU0muNpA+JfWUNjGVmjMbHgGLxMYuYJjNErNmmd7lLNGJkHMKKwcaFHEDCjqDMtT03PabfC8jxjRYBL6NZPooM1GQvD4z4JOS3w21ZLog/xIe/57eMI5tzfDcoSrL8FMzLQuzuRdb7zVHsy+VnZgFXrRF+V950nKH4Rgi2ql0+U5FR7JoWdDp8JHgZTLXnDBTqKrp/aD4j1Oy58OH4TjOFXBRVTGdlx8MENgspKore7IIUhmJsAXk8ZocT7H8PjYrrhZlygFgt0rXTLRBruNJD8vNXxTIcTh4XusxxM+Jmr3KqwpaPxFzufAfedh7Qexb4KNiIS6oRmB3AJq81DwsEDcb9OZTgyMN8VlpcM6mjZZ8uUeWhb6DvAzyicOqkqr47DMQwzJhXqoy/ifuToNulzNx8R3t2OY3rp99BQEJwCXdnYEsTevy1/uvfpoIavL83zOx60NAPIa1C6xkw2NUCb0HiRvN3hzlAWtvz6y3CwEU6DXuSSfUybIIS0wxogdR5yp1qQL6iEFcfsBFK+O1AMUjbqExCJL3xMHd5DPMrejcSYLnluM9yjLNSMfo6m5TjrCBK8YXLh+gBMg5k8RalLGRrXU+xGBhh24jFr4Phwwdi7aFj/KCPU9p22Nzvh02OY0BrWlaDtvqfp9J5Hi8YUCoDst/ViT+RqUjmJzA3tU0mvRud+0+HhhVcEq7scq6UUC/OexsaD+E6bTnV56nEPkGFmSyXu9Aap1IGh3u6B73UxeJ4pcfJhhTuPl1YD8RA8u+ktw8VExVwODy2CGbEdrzuvyqNQpAOx7mxtZltWDuccBwyuijFbQkMCQThsGBDKxG1a0f7w9PaNOHdUCviIxJz+8OHiq70CVdVBAIVdPlNdK1zea8KmFhFsQ58bEtnYmyWJttT0G33nIpxRUGqN2BYsi9yOxrr4mPOx6Hx/MUesXFxDoBatmLlfwhw1FttyNaFAdOW4zmJxx7rDUJhAgkAAWfppMhQ+JRLnQVb5mUC/4hdC5ucr4dQvwkN3YXRI8/pKzarw+FoUBQ8PvCESoemBe2vjOy5N7EZ0z4wamAKhCLHW2J0/5hJteck6x2nofHf8AT4hv9PUHfM2oPlXl1M5rjOUhHZDlJU0crWL85IZXO4y6QNFJM6ZuWjxlT8nYarr9pTKxsR9Kjy3jeFdd0PpcUjUagxJPOINnlbYsYzuiGeOguDI9mFLoJWU/dytwBHGLKsV4AfESpMG4UVuRCyLGTzZadfFR9iR+glWBgoyFnxVQ2AFyszkdSABXqenTeafM+FLICNSuvmDv+QmHkv8AfaRvjel+PxnwlEBRDvrbv4u3X+UaD7wzkfNMHh2DPhF3vVrAyr2QVv4+MyGFCQzjW720rvpv4Vf2jVanP+YnFfNfzUa/hX8Kfr9ZkEwnlwQ4i+8Fp8RYWRYCMRqNtQIMvj9u8ArhnoENmK9FVsoJ8R1nR+zvLnxABWVB0F6mtyb1/SoN7J8pXFe3+X+4Gn76T0/lXB4XDjJYK9CN/rrLExnYHJgq1R19fWEJygg5hiY6aVSYjKPQTfz4X4WHf179pHMlVY/LzlVz/E8vY6HGx2HY4rmx6wZeDVPhC+Nd/qes6LEybAja/CoE6joRCYy3wB2jVD3w9uvlUpbB/f5QoMYY7CvLSKEe7/esUDiM+krLwc4kd30kcxHDvrNEtpMfhTrDmeUpzdxmJliEVrKXbWEixUliYUdNBGOJUJpnaplcWiasRXc7fbvDncE6mlFkkdgLNTIx8Qt8ZoBCCo6Aggih16WTvI1xjOxyL02EqS9TVjY9tbq+232lvE4oclqokkmtrOug6eUknFEJ7sCsxtjWrDoCe0y6KkOlbHp9dCIyD4tZAyaE9ZRu4PMsigJpFic5dtnPqYDylyMfDNZsrqxUVZVDmbehsDOnxWwX+JuHLFgMwyNmVsrm3caNf+mPh3pm0zGaTAHDc8cH5j6maWFz9zu1+Z/dzN5jwuGyFcLCdXGSgcPEtsgZcSqsDNmw2+vTac970iNxHdYXNSxALgA0NToL8u0LxeY4a6fG1fizBb8QtGvqTPOhxB7yxMQnct9Gr85Nad6OdpsHdf5gGH2MITm7AWMrr3U+tj0nnubsxHmwMmnFupsNr3Fgyj0bB5zhtuaMU8/fmeb5x8XcaH6jYxSaExiZjHy6yx1lcz8O2sOZpnYYqWNinaRRqOSIsNNSZDBbSIY0IsfFrSVtiEyvEfWPn0gMWsEd/wCoP6SWNybHfCz4eE7ITQIFg5d6/f5QPEY3pNbj/aXFR/dZmCIiKEU5RQRStVt1N+Ml5dyN8eNst/mOTxeGcMVKkEbg6V5yXviqMgOjFSRQ3W6IbfrsPvNLH5yXsYgz/wAxsjybeY7gaVFU9aAxr69tPp0l3Cb67dO1ww4YIqMS3AvD4pR1ddxqL22qvvDf89xaAGUBSpAon5aoWTZGn3MyntSV7SNxqtlefNqGRWB3ospOiqdbNaIvTp0mbxfEF3dyAC7FiBtZN6Sm4rjTCk1aV3HBkVcrxy8quK5pEiYpCKBtERrksOOyysIBpLLI1UP5Vy18d8q6D8THZR4yCtNdBqTsBqT5CbPLfZLicXXJkB6tv6D9amzg8bwPAjT/AFMQbnQm+ozdPpBOI/6mvqMPDVR0O5qFnFoYfsCw+dmPlQ/rLv8A+JRdw3/dOXb/AKi8Sx1cDyUbyaf9Qce/iYH6SrkbPEexeHejOD5g/mJ59zzEU4hXXNh2hbowSwp8+n0E7dfbklGvcA13utPvPNcRySSdybP1meUn1rjclk9FcBw2fMxBIWr7Wdr9DBna2JnSckyDhXUt8bsTXgKVR9ifrMYcAzuiCgXbKCdrokRnTPpsHC+CxveYfT9/ePicUANNT+Uv5ijYdYZFMAL/ALeczEQsaEvwk0+JilyLrTTQVfnIEjNtpe3h2hrcFS6at9vKUPmS0ugauh83md5FF8bwtKCANaorqDYutN669iJnZP3t+cL4ZFYgM4Ghq9RoCQKI6nr4xsAbgfrt/wBwipOghH73jCGYmBZux6j9XMgmELq9fp/+hciqgp/d/wBI7CjLnwqI6g+H/MtfDAFkjyoKfyUzQCY3FLuH4ZmvKB9Yo2DqF4CpaOWiFAGW5qkwZ/8AlgvevE7DzgHH89KL7nB+FRoxGjMet/0m6+MACToALJ7ATiuZMpcsBlJJ+EVQHT6x8A5xSTqfM7yWMAGIU2t6E6EjxFyktL+F4V8VgiC2omtASBvvvIIfUfeIDsR6/wBZ1fA+zGHmGcl1ZdCLSmG6kA3t/wCJi5p7N4aYbuiksjXltjmQjRdzsevgZcHKpYs67V6/sylp178m4YYAxkLsuIoAViDkN2aIA1BUjWc1xnC5SQuYgCyauh3NbCA3Agk0DULTiCjpn2V1b6Bhf2uZyBqLC6FWe13X5GXpiZyL6D93EFnNOJLuzndjfkNgPoKhvA8vrB97+JfjI/2da7/DZ9JkY51ozc4bmLfMK0FV0qtj4VpUo2P8o00mXz/lLDDzgaIfi70dL8h1nRezmOz4QDBfgpAQbLBRVsOmlees1WwgQQRodD5GMHkknhOQf+P1h3NuDCPlumAIIN/hYoGJOlMqq31MEXBtSwIsEAixdHYr31Gvax9Mgn3p7/dR/wCsg9k5tOxNj+kqVzRGxH0k0c1ufVv6SizFUFdwT5p+lGNj4hKDfX+YD7mpEYhur08/6iNxB0FV5jL/AOv6ygrleLTgdApvz0r9fWPI8uxcrEAWT53p0Aimbx7Xp2KCTy3KVeWDEmkZftHihMML1Y6+Q/vU49mvWbntPjAuF6gDyo2ZhSVV/A8K2I4RPmba9hWtmdFx3CrwzYOOgKqrBXHUaUxPmLg3snh/GzggECgNLN7jv03E6LmuB7zCdNmK7HuNVv69YiNRsO9V8D5kbEeP57S4ashrRyFI8VtgD/8AcTB5NzpP8OjO4UgZTe5K6bddKP1lzc/wi6BGYnMpICsL0NbjqCJUoLmnBrgE4SH4M7YgXooYD4R4DWV8jbJhcRjH8XwX/tRS7n0IHmRJe0OICzuDY2vcWReh27+kycfmFcN7lfmdgB4KSGa/EsAPIQjFylyzAAalso0As7KOnhJcLo370lyqEYjoR61COLt8r6BlVVYAVYUUG8TW5hdA8SusjhYpWW8VqLgtwrZ5Lzc4OIG/AdGHcd/Mbz0VcUMAQQQQCD3B2M8iBnU+y/HsynCvVdV/lvUfQn7xqfGLzjig+LisRqXNH/aloB6BfSDcLjKjq5VXC65H1VrGxFQvm/LnTFZQjEO1pQu83QeNn7SnmPLHwcmevjBOmtEHVSe9EH6yLBPOeW+5YMpDI4tSLoWPl/UX0mWH84W/GM2EELHQ0FoVQ1DFt7G3lARAsLnuYsxO+vidYy11P6x7lgM4HizgnOFVulHx7dooKATFKOxTihGbiZWqCWBBIy5nnLk4jHy/IQCaXO1rFPagR6TOqGo6T2dwfgYq2bbMKoqa2I6jx21mjx3FthJYbU6KOl96gPsrxK0y5AGX4s6sQzAkiiDY0221uV+0WOPeAC6VQf4dTd0Af5dj30hM7YfvSpJoHUt0ABOvTp4bTX4Lgnw8Vc+UAqXBXUGtKv6iY/DYhQ59DRIynranfw1mpyjFcozMSwUBVs3Q61++kkKI5m+ZlTpufyH6+sxQ/wAZNgVda1qBUMxsW3d+w0gONijN8AKjQ66mwKvW/GKQRigAIxYM1j4Vo/D116dtp0PJeWh8N8TQI4bDW2zOWPz6UBoADdTlMMCzrdfc2J0/KOZ4C4YUmnGhUAjOdg1CgbAF/eXTHN4li1OhBII8RoZDAwS5IFCgSSdAAO5hvO8JlxSxTIH+ICwfA6jS71rXeADENFQdCbrxkqmdaNWD4j+8J5Zxfu8VH6A6/wAp0b7GCNGkV6JzFSyWvzKQ6+JQ5gPrt9ZyPO+Y+9awzZQTSnStAB8Prr4zpuS8VmwEJ1IGU/8Ax0/SYvtNwirWIq6E0xGlE7HyOs0z6xEcZG/iJFdgOvrtKYpZhpqLuutb14SNHRl1tL7anT+sfdRoorT/AHHc2fy9IVy7hUdwrtkU38ZIpSBYzQUv2lRdg4gUHqx7jRa/O4pSYoMdKMaOMWU+88JNX8IZZ3O0vK9jtXXrr2mSJvcfh5kPca15TCIhqDOV4uVxZ01FE99qHXUCE82BznSrX69iO0zEUXqcvjqfymrxL50D3ZXRqB26kWPAesHqjiMRSmEzYZAGhIoBhXddel9OsLw8ako9dv5QKUekzBjHL7tm+AWQQLN1YGtaWYdxXH5kRFUBVUdSbI/Fr1gCshKmup+1wTGwwrEA5q67faEYuOMgA3O/gINW33koZapr30r1mz7PYSuHVlDKKYWL1267bdNT9JkMm9X4WKudHyjhVQEgZjS2TqNVDfTcekQoTnfLwq51csAQMho5Qf4SNhtpX1MxJ2vEcOroy7WK128KP9fWcW6kEg7gkHzGhikRjVHihXSezeN8DL2a/Uf2mnxSB0ZDswry7GYfs+fnv/b/AO00n4pB+Ieo6dB4ys365ZsMqSCNVNHz/YiZzCeY4qu2ZQFFVVizX4iBtvBIU9xxGjiFOBFHAigboSSyiSya+ET4UIQwx3mJx2DlciqHSr2+s2cso4zh866DUfuoSMWodwPFZfhyivxULJAG5vT0qBkSeCjMaUEnehuahav43hiDe4Ooa+/QnrHZlxCqn4CFIJ0+I2P7mGcCgdcgBOUEkHbyHiINj8GdQPirp1Hh4wAXWzuCbrTw0EubBRQ6sbagUIuj4V0+sqbD72JNMIk6Am9+vjvArw8IkgD5ia3mzh8udRmTFPmNvtt9YuC4QobNEkdOnlDcE5WB6edUT18LhKDOJxK6nK48KB/ITH4685LLlJ1I/UTq8XEBPyij20PrqPtOX5jiB8RiLoGhe9Dy8bggUR8vjGqPDS1MUqpUHRt/EC9PLWNhYLOSB2sk7fUwrA5W7USAo8Tr6TSfgaTKldbs731JHUekIBwOGwgts2Y9gevgBrB34cX8LadNNfrNbB4FEFVmPVj+9JaMIbZRUGsY8Ko3a/KRdFGw+5hHHoubSh5fqIIYXTVFLUwGIsCKEa5wmAzGq8x+UgTKlaS94e0osBqTz99pSMYiJscmQDcdw341+o/WBYblSGUkEbEaGapJPSBY/D9R6f0gEJjhqKDI+ilR8r2QLow3D4oKAhBDnc7jX8QO2+v7uYQEvHEkgBxmA+h9ZRt4LLRXeifS7H5xw4pPAj8iv6zM4biACSj1t8L3qKH4gf3UsXGbLlCgm7saje6+IQmDw4DDtRrwNrp5SZcXsKPpAzVZyaAGzMik3uKsnp2+kCxOYEWBTdjqNOlnr5ipDFvH8flDIu9/N2G/r0uY4EsYkmzGqFiNTb4XhlRVsDN1PWzAeB4ezmOw28TNKvH9YLVjObjFj3lJ3jqw7QmrMw/Zlb0QRe9/eOH1jFrhGZicOy+I7iWYHCndtPDvDinX9Ysn73lXVfEEgaV6dI0saKDUApj5SZNb/XpEG84NR935xZfH7GTXEAiPED93rCI5POWe7lf+K7CVvxRMmLh8XhA2o0P29IDi4TLuP6Qg4x6frINjnwjFDVGyy19enpI5ZRXliqWZY2WBXUJwcDqfSJHrYDzlgxYF48NIrPeVh4swgW5/AekXvJWSIswkwWjE/dRw3l+sqDecYmUxdmEcuINFBglULVl1J6f8xS8scFAFOXFxKYnqibqPNt/KKEwGZExRQQzRHeKKSqtRBRNfuxKXOnT0EUUvoqMcRRQEscRRQGaRaKKBExRRQHEmNoooDiSiigMN45iigNDeToGx8JWFqWFg7HUR4oUNxGKWxGZjZLMST13jxRQj/9k='),
        ),
        title: Text('Royal Enfield'),
        subtitle: Text('5.0 (23 Reviews)'),
        trailing: Text('\$10'),
      ),
    ],
  );
}
