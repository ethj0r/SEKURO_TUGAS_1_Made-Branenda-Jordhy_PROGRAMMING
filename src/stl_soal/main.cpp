#include <iostream>
#include <vector>
#include <map>
using namespace std;

/**
 * @brief
 * directly pake map buat count jumlah id (kategori) unik.
 * method .insert handling duplicates
 * jadi semua id as key lalu ambil map.size()
 * as jumlah paket maksimal yg dpt diambil.
 * (koordinat jadi hiasan doang ya bang hehe)
 */
void solve() {
    int n;
    cin >> n;
    vector<int> koordinat(n);
    vector<int> id(n);

    for (int i=0; i<n; i++) cin >> koordinat[i];
    for (int i=0; i<n; i++) cin >> id[i];

    map<int, int> temp;
    for (int i=0; i<n; i++) {
        temp.insert({id[i],koordinat[i]});
    }

    /**
     * @brief approach dgn map lain
     * karena koordinat ga pernah kepake
     */
    // map<int, bool> temp;
    // for (int i=0; i<n; i++) temp[id[i]] = true;

    cout << temp.size() << endl;
}

int main(){
    ios::sync_with_stdio(false);
    solve();

    return 0;
}