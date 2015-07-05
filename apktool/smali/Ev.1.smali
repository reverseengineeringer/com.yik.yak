.class public LEv;
.super LDh;
.source "SourceFile"

# interfaces
.implements LBd;
.implements LBy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f03004f

    invoke-direct {p0, v0}, LDh;-><init>(I)V

    .line 50
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, LEv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "KEY_TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, LEv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const-string v1, "peekID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    :cond_0
    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, LEv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_0
    return-object p1
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, LEv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, LEv;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_CAN_SUBMIT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, ""

    invoke-direct {p0, v0}, LEv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a_()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "photosEnabled"

    invoke-virtual {v0, v1, v8}, LAw;->b(Ljava/lang/String;Z)V

    .line 94
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "linksEnabled"

    invoke-virtual {v0, v1, v8}, LAw;->b(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, LEv;->l()V

    .line 98
    invoke-virtual {p0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 99
    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 103
    iput-boolean v8, p0, LEv;->h:Z

    .line 105
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 106
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "lat"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "long"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, LEv;->p:Landroid/os/Bundle;

    const-string v3, "peekID"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/yik/yak/data/models/YakkerLocation;

    const-string v4, "peek"

    invoke-direct {v0, v4}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, LEv;->p:Landroid/os/Bundle;

    const-string v5, "peekLatitude"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 116
    iget-object v4, p0, LEv;->p:Landroid/os/Bundle;

    const-string v5, "peekLongitude"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 117
    const-string v4, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v4, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, LEv;->x:LDt;

    sget-object v4, LDt;->b:LDt;

    if-ne v0, v4, :cond_0

    .line 120
    const-string v0, "hot"

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, LEv;->n:Ljava/util/ArrayList;

    .line 133
    :goto_0
    iput-boolean v8, p0, LEv;->i:Z

    .line 134
    invoke-static {v0, v2, v1}, LzY;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 140
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 141
    new-instance v1, LEw;

    invoke-direct {v1, p0, v3}, LEw;-><init>(LEv;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 223
    return-void

    .line 123
    :cond_0
    const-string v0, "yaks"

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, LEv;->m:Ljava/util/ArrayList;

    goto :goto_0

    .line 127
    :cond_1
    const-string v0, "getPeekMessages"

    .line 128
    const-string v4, "peekID"

    iget-object v5, p0, LEv;->p:Landroid/os/Bundle;

    const-string v6, "peekID"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, LEv;->m:Ljava/util/ArrayList;

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, LEv;->n:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public c()LFx;
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, LEv;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, LFx;->b:LFx;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LFx;->a:LFx;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, LEv;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, LEv;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    const-string v1, "isPeek"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    const-string v1, "peekID"

    const-string v2, "-1"

    invoke-direct {p0, v2}, LEv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "canSubmit"

    invoke-direct {p0}, LEv;->o()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v1, "title"

    const-string v2, "Send Yak"

    invoke-direct {p0, v2}, LEv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, LEv;->startActivityForResult(Landroid/content/Intent;I)V

    .line 293
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-super {p0, p1}, LDh;->onActivityCreated(Landroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, LDh;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 228
    iget-object v0, p0, LEv;->p:Landroid/os/Bundle;

    const-string v2, "peekID"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    sget-object v0, LDt;->b:LDt;

    iput-object v0, p0, LEv;->x:LDt;

    .line 232
    const-string v0, "CustomPeek"

    iput-object v0, p0, LEv;->l:Ljava/lang/String;

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {p0}, LEv;->a_()V

    .line 242
    return-object v1

    .line 234
    :cond_1
    invoke-static {}, LAB;->a()LAB;

    move-result-object v2

    invoke-virtual {v2, v0}, LAB;->c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    .line 236
    iget-object v0, v2, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v3, "Featured"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LDt;->a:LDt;

    :goto_1
    iput-object v0, p0, LEv;->x:LDt;

    .line 237
    iget-object v0, v2, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v2, "Featured"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FeaturedPeek"

    :goto_2
    iput-object v0, p0, LEv;->l:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    sget-object v0, LDt;->b:LDt;

    goto :goto_1

    .line 237
    :cond_3
    const-string v0, "OtherPeek"

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, LDh;->onResume()V

    .line 253
    invoke-virtual {p0}, LEv;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 254
    return-void
.end method
