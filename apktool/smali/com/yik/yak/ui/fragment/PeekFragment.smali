.class public Lcom/yik/yak/ui/fragment/PeekFragment;
.super Lcom/yik/yak/ui/fragment/BaseYakFragment;
.source "SourceFile"

# interfaces
.implements LBI;
.implements LBn;
.implements LBr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f030055

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;-><init>(I)V

    .line 64
    return-void
.end method

.method public static a(Lcom/yik/yak/data/models/PeekLocation;)Lcom/yik/yak/ui/fragment/PeekFragment;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/yik/yak/ui/fragment/PeekFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/PeekFragment;-><init>()V

    .line 70
    invoke-static {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->b(Lcom/yik/yak/data/models/PeekLocation;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/PeekFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v0
.end method

.method protected static b(Lcom/yik/yak/data/models/PeekLocation;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "title"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "location"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    if-nez v1, :cond_0

    .line 81
    const-string v1, "peekID"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v1, "isCustom"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "canSubmit"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmit:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v1, "canSubmitPhotos"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "canSubmitLinks"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    const-string v1, "canVote"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canVote:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string v1, "canReply"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canReply:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string v1, "canReport"

    iget-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->canReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    const-string v1, "peekLatitude"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "peekLongitude"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "title"

    iget-object v2, p0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/PeekFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a_()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->p()V

    .line 146
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 147
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v1

    .line 151
    iput-boolean v8, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->i:Z

    .line 153
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 154
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "lat"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "long"

    invoke-virtual {v1}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->q:Landroid/os/Bundle;

    const-string v3, "peekID"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/yik/yak/data/models/YakkerLocation;

    const-string v4, "peek"

    invoke-direct {v0, v4}, Lcom/yik/yak/data/models/YakkerLocation;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->q:Landroid/os/Bundle;

    const-string v5, "peekLatitude"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 164
    iget-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->q:Landroid/os/Bundle;

    const-string v5, "peekLongitude"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 165
    const-string v4, "lat"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v4, "long"

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->y:LDX;

    sget-object v4, LDX;->b:LDX;

    if-ne v0, v4, :cond_0

    .line 168
    const-string v0, "hot"

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->o:Ljava/util/ArrayList;

    .line 181
    :goto_0
    iput-boolean v8, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->j:Z

    .line 182
    invoke-static {v0, v2, v1}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 188
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 189
    new-instance v1, LFf;

    invoke-direct {v1, p0, v3}, LFf;-><init>(Lcom/yik/yak/ui/fragment/PeekFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 274
    return-void

    .line 171
    :cond_0
    const-string v0, "yaks"

    .line 172
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->n:Ljava/util/ArrayList;

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "getPeekMessages"

    .line 176
    const-string v4, "peekID"

    iget-object v5, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->q:Landroid/os/Bundle;

    const-string v6, "peekID"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->n:Ljava/util/ArrayList;

    .line 178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->o:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_0
    return-object p1
.end method

.method public b(Lcom/yik/yak/data/models/Yak;)Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "peekID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    :cond_0
    return-object p1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 359
    const/16 v0, 0x8

    return v0
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_0
    return-object p1
.end method

.method public e()LGf;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, LGf;->b:LGf;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LGf;->a:LGf;

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string v1, "isPeek"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v1, "peekID"

    const-string v2, "-1"

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/PeekFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "canSubmit"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v1, "title"

    const-string v2, "Send Yak"

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/PeekFragment;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/PeekFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 279
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->q:Landroid/os/Bundle;

    const-string v2, "peekID"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    sget-object v0, LDX;->b:LDX;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->y:LDX;

    .line 283
    const-string v0, "CustomPeek"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->m:Ljava/lang/String;

    .line 292
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->a_()V

    .line 293
    return-object v1

    .line 285
    :cond_1
    invoke-static {}, LAO;->a()LAO;

    move-result-object v2

    invoke-virtual {v2, v0}, LAO;->c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_0

    .line 287
    iget-object v0, v2, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v3, "Featured"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LDX;->a:LDX;

    :goto_1
    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->y:LDX;

    .line 288
    iget-object v0, v2, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v2, "Featured"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FeaturedPeek"

    :goto_2
    iput-object v0, p0, Lcom/yik/yak/ui/fragment/PeekFragment;->m:Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_2
    sget-object v0, LDX;->b:LDX;

    goto :goto_1

    .line 288
    :cond_3
    const-string v0, "OtherPeek"

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseYakFragment;->onResume()V

    .line 299
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->f()V

    .line 300
    return-void
.end method

.method protected s()Z
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/PeekFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
