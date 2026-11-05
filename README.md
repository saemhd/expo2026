# Al Rajhi Direct Hajj — Hajj Conference 2026 showcase

Live address (once set up): https://expo2026.alrajhinusuk.com
Booth screen (auto tour, pauses on touch): https://expo2026.alrajhinusuk.com/#kiosk

This folder is the complete website. It needs no build step and loads nothing from other websites:
the 3D library (three.js), the fonts (Tajawal, Amiri), photos and logos are all inside.

## What is in the folder

| Path | What it is |
| --- | --- |
| `index.html` | The page itself (all text, AR/EN, layout and 3D scenes) |
| `data.js` | World map dots + the 98 countries (arcs on the globe) |
| `region.js`, `hijaz.js` | Saudi Arabia map, roads, city outlines, holy-sites dots |
| `rshape.js` | The gold R traced from the official logo |
| `assets/` | Logo, QR code, favicon, photos (`ph/`), partner logos (`logos/`) |
| `vendor/` | three.js 0.160 (MIT licence) and fonts (SIL Open Font Licence) |
| `CNAME` | Tells GitHub Pages the custom domain |
| `.nojekyll` | Tells GitHub Pages to serve files as they are |
| `start-offline.bat` | Runs the site on a booth PC with no internet |

## Go live — step by step

### 1. Put the files on GitHub
1. Sign in at github.com (use a company account if you have one).
2. Click **New repository** → name it `expo2026` → **Public** → **Create repository**.
   (Free GitHub Pages needs a public repository; private needs a paid plan.)
3. On the empty repository page click **uploading an existing file**.
4. Unzip this package, open the `expo2026` folder, select **everything inside it**
   (including `CNAME` and `.nojekyll`), and drag it into the browser. Wait for all files to finish.
   - `.nojekyll` is hidden on some computers: in Windows Explorer, tick **View → Hidden items**.
5. Click **Commit changes**.

### 2. Turn on GitHub Pages
1. In the repository: **Settings → Pages**.
2. Under **Build and deployment**: Source = **Deploy from a branch**, Branch = **main**, folder **/(root)** → **Save**.
3. After about 1 minute the site works at `https://<your-github-name>.github.io/expo2026/`. Check it before continuing.

### 3. (Recommended) Verify the domain on GitHub
This prevents anyone else using your domain on GitHub.
1. Your profile picture → **Settings → Pages** (account settings, not the repository) → **Add a domain** → `alrajhinusuk.com`.
2. GitHub shows a **TXT** record. Add it at your DNS provider (step 4), then click **Verify**.

### 4. Create the subdomain (DNS)
Done wherever `alrajhinusuk.com` is managed (domain registrar, Cloudflare, or your IT team).
Add one record:

| Type | Name / Host | Value / Target | TTL |
| --- | --- | --- | --- |
| CNAME | `expo2026` | `<your-github-name>.github.io` | Auto / 3600 |

- Use only your GitHub user or organisation name, **without** `/expo2026` and without `https://`.
- If you use Cloudflare, set the record to **DNS only** (grey cloud) until HTTPS works.

### 5. Connect the domain and switch on HTTPS
1. Back in the repository: **Settings → Pages → Custom domain** → type `expo2026.alrajhinusuk.com` → **Save**.
2. Wait for **DNS check successful** (minutes to a few hours).
3. Tick **Enforce HTTPS** (the box becomes available once the certificate is issued, usually within an hour).
4. Open https://expo2026.alrajhinusuk.com — done.

## Updating later
Repository → open a file → pencil icon to edit, or **Add file → Upload files** to replace one
(same file name). Changes go live in about a minute. Refresh with Ctrl+F5 to see them.

- Text (Arabic and English) is in `index.html`, inside the `T = { ar: {...}, en: {...} }` block.
- Numbers for the charts are in `index.html` (`PKG_STATS`, `nationsByRegion`) and the country list in `data.js`.

## At the booth
- Use Chrome or Edge, full screen (F11), and open `https://expo2026.alrajhinusuk.com/#kiosk`.
- One scroll / one arrow key / one swipe = one step. Any touch pauses the auto tour; it resumes after 45 seconds.
- **No internet at the booth?** Copy this folder to the PC and double-click `start-offline.bat`
  (needs Python, free from python.org — tick "Add to PATH" when installing). Opening `index.html`
  directly by double-click will not work, because browsers block 3D modules from local files.

---

## ملخص بالعربية
1. أنشئ مستودعاً عاماً باسم `expo2026` على GitHub وارفع **كل** محتويات هذا المجلد (ومنها `CNAME` و `.nojekyll`).
2. من **Settings → Pages** اختر الفرع `main` والمجلد `/(root)` ثم احفظ.
3. لدى مزوّد النطاق أضف سجلاً من نوع **CNAME**: الاسم `expo2026` والقيمة `<اسم-حسابك>.github.io`.
4. في **Settings → Pages → Custom domain** اكتب `expo2026.alrajhinusuk.com` ثم فعّل **Enforce HTTPS**.
5. على شاشة الجناح افتح الرابط مع `#kiosk` في نهايته لتشغيل العرض التلقائي.
