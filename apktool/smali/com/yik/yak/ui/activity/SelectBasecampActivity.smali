.class public Lcom/yik/yak/ui/activity/SelectBasecampActivity;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements LDf;


# instance fields
.field public c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

.field protected d:Landroid/support/v7/widget/RecyclerView;

.field protected e:Landroid/widget/TextView;

.field public f:Landroid/widget/ProgressBar;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LAw;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:LAw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 228
    const/4 v10, 0x0

    .line 230
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, ""

    .line 259
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const-string v7, ""

    .line 236
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
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

    .line 245
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

    .line 246
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 247
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 249
    if-nez v1, :cond_3

    .line 250
    :try_start_3
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    .line 251
    if-nez v1, :cond_3

    .line 252
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    :try_start_4
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:Landroid/content/Context;

    const-string v2, "The Geocoder service is not responding correctly. This is a common problem on some android devices and may be fixed by a simple reboot of the phone."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v10

    goto :goto_1

    :cond_1
    move v1, v9

    .line 245
    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    .line 255
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 256
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
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

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    sget-object v1, LwG;->a:LwG;

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(LwG;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0, p0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    .line 116
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 91
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 93
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->e:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->e:Landroid/widget/TextView;

    new-instance v1, LBJ;

    invoke-direct {v1, p0}, LBJ;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Landroid/widget/ProgressBar;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    .line 107
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0, p0}, Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;->setOnItemClickListener(LDf;)V

    .line 108
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 109
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c:Lcom/yik/yak/ui/adapter/BaseCampOptionsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const v4, 0x7f080080

    .line 119
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "You have not selected a Herd"

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    invoke-virtual {v0}, LAw;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    if-eq v0, v1, :cond_1

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "title"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "message"

    const v2, 0x7f08007e

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "okText"

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "cancelText"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/16 v1, 0xdad

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v2, "title"

    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "message"

    const v3, 0x7f08007f

    invoke-virtual {p0, v3}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v2, "editText"

    const-string v3, "\\,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v0, "okText"

    const-string v2, "Yes"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v0, "cancelText"

    const-string v2, "Cancel"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/16 v0, 0xdae

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public a(LAw;)V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p1, :cond_0

    .line 153
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 155
    invoke-static {}, LAD;->a()LAD;

    move-result-object v1

    invoke-virtual {v1}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    .line 156
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "bcName"

    invoke-virtual {p1}, LAw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "bcLat"

    invoke-virtual {p1}, LAw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "bcLong"

    invoke-virtual {p1}, LAw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "bcPeekID"

    invoke-virtual {p1}, LAw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, LAM;->a()LAM;

    move-result-object v1

    invoke-virtual {v1}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "saveBasecamp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {v2}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v2

    const-string v3, "RequestBody:body"

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 172
    new-instance v2, LxF;

    invoke-direct {v2}, LxF;-><init>()V

    invoke-virtual {v2, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 177
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 178
    new-instance v1, LBK;

    invoke-direct {v1, p0, p1}, LBK;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;LAw;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    goto/16 :goto_0
.end method

.method public a(LDp;LDd;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDp",
            "<*>;",
            "LDd;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p2, p3}, LDd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAw;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    .line 400
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAw;

    .line 401
    sget-object v2, LAy;->b:LAy;

    invoke-virtual {v0, v2}, LAw;->a(LAy;)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    sget-object v1, LAy;->a:LAy;

    invoke-virtual {v0, v1}, LAw;->a(LAy;)V

    .line 405
    invoke-virtual {p2}, LDd;->notifyDataSetChanged()V

    .line 406
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 374
    new-instance v1, LBQ;

    invoke-direct {v1, p0}, LBQ;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 265
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 272
    const-string v2, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v2, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "getBasecamps"

    .line 278
    invoke-static {}, LAM;->a()LAM;

    move-result-object v3

    invoke-virtual {v3}, LAM;->c()Lcom/yik/yak/data/models/Environment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yik/yak/data/models/Environment;->getBasecampEndpoint()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v3, v2, v1, v0}, LAj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, LxF;

    invoke-direct {v2}, LxF;-><init>()V

    invoke-virtual {v2, v1}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v1

    invoke-virtual {v1}, LxF;->b()LxD;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->f:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    const/4 v2, 0x1

    invoke-static {v2}, LAj;->a(Z)Lxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lxy;->a(LxD;)LwY;

    move-result-object v1

    .line 289
    new-instance v2, LBN;

    invoke-direct {v2, p0, v0}, LBN;-><init>(Lcom/yik/yak/ui/activity/SelectBasecampActivity;Lcom/yik/yak/data/models/YakkerLocation;)V

    invoke-virtual {v1, v2}, LwY;->a(Lxc;)V

    .line 365
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 412
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 413
    if-nez p3, :cond_1

    .line 414
    const-string v0, "My Herd not set."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :cond_1
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    invoke-virtual {v1, v0}, LAw;->a(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(LAw;)V

    goto :goto_0

    .line 424
    :cond_2
    const-string v0, "You must set a name to save Your Herd."

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->i:LAw;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(LAw;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0xdad
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->h:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->d()V

    .line 84
    const-string v0, "Set My Herd"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->c()V

    .line 88
    return-void
.end method

.method public onSetBasecampClicked(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SelectBasecampActivity;->a()V

    .line 394
    return-void
.end method
