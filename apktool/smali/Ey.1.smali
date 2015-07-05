.class public LEy;
.super LDf;
.source "SourceFile"

# interfaces
.implements LBe;
.implements LBy;


# instance fields
.field protected b:LEB;

.field protected c:Landroid/os/Vibrator;

.field protected d:Landroid/widget/ListView;

.field protected e:Z

.field protected f:Z

.field private final g:LED;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, LDf;-><init>()V

    .line 42
    new-instance v0, LED;

    invoke-direct {v0, p0}, LED;-><init>(LEy;)V

    iput-object v0, p0, LEy;->g:LED;

    .line 44
    const-string v0, "PeekListFragment"

    iput-object v0, p0, LEy;->h:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, LEy;->e:Z

    .line 54
    iput-boolean v1, p0, LEy;->f:Z

    .line 277
    return-void
.end method

.method static synthetic a(LEy;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, LEy;->h()V

    return-void
.end method

.method static synthetic a(LEy;Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, LEy;->a(Lcom/yik/yak/data/models/PeekLocation;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 101
    const v0, 0x7f0d0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LEy;->d:Landroid/widget/ListView;

    .line 102
    new-instance v0, LEB;

    invoke-direct {v0, p0}, LEB;-><init>(LEy;)V

    iput-object v0, p0, LEy;->b:LEB;

    .line 103
    iget-object v0, p0, LEy;->d:Landroid/widget/ListView;

    iget-object v1, p0, LEy;->b:LEB;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/PeekLocation;)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "title"

    const-string v2, "Delete Peek Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do you want to remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "value"

    iget-object v2, p1, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "okText"

    const-string v2, "Yes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "cancelText"

    const-string v2, "No"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, LEy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, LEy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, LEy;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, LEy;->b:LEB;

    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1}, LAB;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LEB;->a(Ljava/util/ArrayList;)V

    .line 81
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, LEy;->d:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 109
    iget-object v0, p0, LEy;->d:Landroid/widget/ListView;

    new-instance v1, LEz;

    invoke-direct {v1, p0}, LEz;-><init>(LEy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    iget-object v0, p0, LEy;->d:Landroid/widget/ListView;

    new-instance v1, LEA;

    invoke-direct {v1, p0}, LEA;-><init>(LEy;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 172
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "Peeks"

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public c()LFx;
    .locals 1

    .prologue
    .line 236
    sget-object v0, LFx;->c:LFx;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, LEy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 248
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    invoke-super {p0, p1}, LDf;->onActivityCreated(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, LEy;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, LEy;->c:Landroid/os/Vibrator;

    .line 178
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 197
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0}, LAB;->f()V

    .line 200
    invoke-virtual {p0}, LEy;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 202
    invoke-virtual {p0}, LEy;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, LEy;->b:LEB;

    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1}, LAB;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, LEB;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 209
    :pswitch_3
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-static {}, LAB;->a()LAB;

    move-result-object v1

    invoke-virtual {v1, v0}, LAB;->d(Ljava/lang/String;)V

    .line 213
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    invoke-virtual {v0}, LAB;->f()V

    .line 214
    invoke-direct {p0}, LEy;->i()V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 210
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 93
    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, LEy;->a(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, LEy;->j()V

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LEy;->setHasOptionsMenu(Z)V

    .line 97
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, LDf;->onPause()V

    .line 190
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "PeekListFragment"

    invoke-virtual {v0, v1}, LAB;->a(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, LDf;->onResume()V

    .line 183
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    const-string v1, "PeekListFragment"

    iget-object v2, p0, LEy;->g:LED;

    invoke-virtual {v0, v1, v2}, LAB;->a(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 184
    invoke-direct {p0}, LEy;->i()V

    .line 185
    return-void
.end method
