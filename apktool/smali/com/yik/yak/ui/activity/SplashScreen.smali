.class public Lcom/yik/yak/ui/activity/SplashScreen;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private final c:Landroid/os/Handler$Callback;

.field private final d:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler$Callback;

.field private f:Landroid/content/Context;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/os/Handler;

.field private j:LAD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 35
    new-instance v0, LCn;

    invoke-direct {v0, p0}, LCn;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->c:Landroid/os/Handler$Callback;

    .line 48
    new-instance v0, LCp;

    invoke-direct {v0, p0}, LCp;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->d:Ljava/lang/Runnable;

    .line 55
    new-instance v0, LCq;

    invoke-direct {v0, p0}, LCq;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->e:Landroid/os/Handler$Callback;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->j:LAD;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, LHj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->h()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SplashScreen;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    const-string v1, "cleanStart"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    if-eqz p1, :cond_2

    .line 215
    const-string v1, "activateMethod"

    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->finish()V

    .line 223
    return-void

    .line 218
    :cond_3
    const-string v1, "activateMethod"

    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->finish()V

    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->j()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->j:LAD;

    invoke-virtual {v0}, LAD;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->j:LAD;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->e:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, LAD;->a(Landroid/os/Handler$Callback;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->i()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->a()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->i()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    new-instance v1, LCr;

    invoke-direct {v1, p0}, LCr;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-virtual {v0, p0, v1}, LAJ;->a(Landroid/content/Context;LAL;)V

    .line 131
    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->f()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->j:LAD;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->c:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, LAD;->b(Landroid/os/Handler$Callback;)V

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, LAa;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yik/yak/YikYak;->a(Ljava/lang/String;)V

    .line 140
    :cond_1
    const-string v0, "isNewYakker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, LAa;->b(Ljava/lang/String;Z)V

    .line 141
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->e()V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/SplashScreen;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 147
    const v0, 0x7f080134

    const v1, 0x7f080133

    new-instance v2, LCs;

    invoke-direct {v2, p0}, LCs;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    new-instance v3, LCt;

    invoke-direct {v3, p0}, LCt;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-static {p0, v0, v1, v2, v3}, LHp;->a(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    .line 166
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 170
    const v0, 0x7f08012a

    const v1, 0x7f080129

    new-instance v2, LCu;

    invoke-direct {v2, p0}, LCu;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    new-instance v3, LCv;

    invoke-direct {v3, p0}, LCv;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    invoke-static {p0, v0, v1, v2, v3}, LHp;->a(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/app/Dialog;

    .line 185
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v1, "title"

    const-string v2, "Connection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "message"

    const-string v2, "There was a problem connecting to our servers.\r\n\r\nWould you like to try again or come back later?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "okText"

    const-string v2, "Try Again"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "cancelText"

    const-string v2, "Later"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 226
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 314
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCw;

    invoke-direct {v1, p0}, LCw;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 323
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCo;

    invoke-direct {v1, p0}, LCo;-><init>(Lcom/yik/yak/ui/activity/SplashScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 276
    sparse-switch p1, :sswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 278
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SplashScreen;->a(I)V

    goto :goto_0

    .line 282
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SplashScreen;->b(I)V

    goto :goto_0

    .line 286
    :sswitch_2
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->l()V

    goto :goto_0

    .line 290
    :sswitch_3
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->m()V

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/SplashScreen;->b:Z

    .line 238
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SplashScreen;->setContentView(I)V

    .line 239
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->f:Landroid/content/Context;

    .line 240
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->j:LAD;

    .line 241
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->k()V

    .line 245
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_FORCE_RESTART"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {}, LAN;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LAN;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SplashScreen;->a(Z)V

    .line 251
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 262
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->d()V

    .line 263
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SplashScreen;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SplashScreen;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 272
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SplashScreen;->c()V

    .line 257
    return-void
.end method
