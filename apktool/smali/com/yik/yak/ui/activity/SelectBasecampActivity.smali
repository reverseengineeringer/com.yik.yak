.class public Lcom/yik/yak/ui/activity/SelectBasecampActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LCS;


# instance fields
.field public b:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

.field protected c:Landroid/support/v7/widget/RecyclerView;

.field protected d:Landroid/widget/TextView;

.field public e:Landroid/widget/ProgressBar;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LAk;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:LAk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 218
    const/4 v10, 0x0

    .line 220
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, ""

    .line 249
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v7, ""

    .line 226
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 235
    :goto_1
    if-eqz v2, :cond_1

    move v1, v8

    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 236
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 237
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 239
    if-nez v1, :cond_3

    .line 240
    :try_start_3
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 241
    if-nez v1, :cond_3

    .line 242
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_4
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    const-string v2, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v10

    goto :goto_1

    :cond_1
    move v1, v9

    .line 235
    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    .line 245
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 246
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v7

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, Lwx;->a:Lwx;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Lwx;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0, p0}, Lww;->a(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 89
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 91
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 93
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/widget/TextView;

    new-instance v1, LBG;

    invoke-direct {v1, p0}, LBG;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->e:Landroid/widget/ProgressBar;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    .line 105
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->setOnItemClickListener(LCS;)V

    .line 106
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 107
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 108
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const v4, 0x7f08006e

    .line 117
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "You have not selected a Herd"

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    invoke-virtual {v0}, LAk;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    if-eq v0, v1, :cond_1

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "title"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "message"

    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "okText"

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "cancelText"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/16 v1, 0xdad

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v2, "title"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "message"

    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "editText"

    const-string v3, "\\,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v0, "okText"

    const-string v2, "Yes"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v0, "cancelText"

    const-string v2, "Cancel"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/16 v0, 0xdae

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public a(LAk;)V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    invoke-static {v1}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v1

    invoke-virtual {v1}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    .line 154
    const-string v1, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "bcName"

    invoke-virtual {p1}, LAk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "bcLat"

    invoke-virtual {p1}, LAk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "bcLong"

    invoke-virtual {p1}, LAk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "bcPeekID"

    invoke-virtual {p1}, LAk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, LAz;->a()LAz;

    move-result-object v1

    invoke-virtual {v1}, LAz;->b()Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "saveBasecamp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v2}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v2

    const-string v3, "RequestBody:body"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 170
    new-instance v2, Lxv;

    invoke-direct {v2}, Lxv;-><init>()V

    invoke-virtual {v2, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 175
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 176
    new-instance v1, LBH;

    invoke-direct {v1, p0, p1}, LBH;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;LAk;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    goto/16 :goto_0
.end method

.method public a(LDb;LCQ;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDb",
            "<*>;",
            "LCQ;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p2, p3}, LCQ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAk;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    .line 390
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAk;

    .line 391
    sget-object v2, LAm;->b:LAm;

    invoke-virtual {v0, v2}, LAk;->a(LAm;)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    sget-object v1, LAm;->a:LAm;

    invoke-virtual {v0, v1}, LAk;->a(LAm;)V

    .line 395
    invoke-virtual {p2}, LCQ;->notifyDataSetChanged()V

    .line 396
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 362
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 364
    new-instance v1, LBN;

    invoke-direct {v1, p0}, LBN;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 255
    .line 256
    invoke-static {p0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 261
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 262
    const-string v2, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "getBasecamps"

    .line 268
    invoke-static {}, LAz;->a()LAz;

    move-result-object v3

    invoke-virtual {v3}, LAz;->b()Lcom/yik/yak/data/models/Environment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v3, v2, v1, v0}, LzY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Lxv;

    invoke-direct {v2}, Lxv;-><init>()V

    invoke-virtual {v2, v1}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v1

    invoke-virtual {v1}, Lxv;->b()Lxt;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->e:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    const/4 v2, 0x1

    invoke-static {v2}, LzY;->a(Z)Lxo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lxo;->a(Lxt;)LwP;

    move-result-object v1

    .line 279
    new-instance v2, LBK;

    invoke-direct {v2, p0, v0}, LBK;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;Lcom/yik/yak/data/models/YakkerLocation;)V

    invoke-virtual {v1, v2}, LwP;->a(LwT;)V

    .line 355
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 403
    if-nez p3, :cond_1

    .line 404
    const-string v0, "My Herd not set."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    invoke-virtual {v1, v0}, LAk;->a(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(LAk;)V

    goto :goto_0

    .line 414
    :cond_2
    const-string v0, "You must set a name to save Your Herd."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:LAk;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(LAk;)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0xdad
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d()V

    .line 83
    const-string v0, "Set My Herd"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c()V

    .line 86
    return-void
.end method

.method public onSetBasecampClicked(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a()V

    .line 384
    return-void
.end method
