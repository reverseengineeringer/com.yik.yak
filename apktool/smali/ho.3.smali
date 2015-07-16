.class public abstract Lho;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lhn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lhv;",
            ">;"
        }
    .end annotation
.end field

.field private final d:LhA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LhA",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhp;

    invoke-direct {v0, p0}, Lhp;-><init>(Lho;)V

    iput-object v0, p0, Lho;->d:LhA;

    return-void
.end method

.method static synthetic a(Lho;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lho;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lho;Lhn;)Lhn;
    .locals 0

    iput-object p1, p0, Lho;->a:Lhn;

    return-object p1
.end method

.method static synthetic a(Lho;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhv;

    invoke-interface {v0}, Lhv;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lhv;)V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {p2, v0}, Lhv;->a(Lhn;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lho;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lho;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lho;->b:Landroid/os/Bundle;

    :cond_2
    :goto_1
    iget-object v0, p0, Lho;->d:LhA;

    invoke-virtual {p0, v0}, Lho;->a(LhA;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lho;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static synthetic b(Lho;)Lhn;
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    return-object v0
.end method

.method public static b(Landroid/widget/FrameLayout;)V
    .locals 8

    const/4 v7, -0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v3, :cond_0

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lht;

    invoke-direct {v3, v0, v1}, Lht;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lhs;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhs;-><init>(Lho;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lho;->a(Landroid/os/Bundle;Lhv;)V

    iget-object v0, p0, Lho;->a:Lhn;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lho;->a(Landroid/widget/FrameLayout;)V

    :cond_0
    return-object v2
.end method

.method public a()Lhn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lho;->a:Lhn;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lhq;

    invoke-direct {v0, p0, p1, p2, p3}, Lhq;-><init>(Lho;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lho;->a(Landroid/os/Bundle;Lhv;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lhr;

    invoke-direct {v0, p0, p1}, Lhr;-><init>(Lho;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lho;->a(Landroid/os/Bundle;Lhv;)V

    return-void
.end method

.method protected a(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-static {p1}, Lho;->b(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected abstract a(LhA;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LhA",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lhu;

    invoke-direct {v1, p0}, Lhu;-><init>(Lho;)V

    invoke-direct {p0, v0, v1}, Lho;->a(Landroid/os/Bundle;Lhv;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {v0, p1}, Lhn;->b(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lho;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {v0}, Lhn;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lho;->a(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {v0}, Lhn;->c()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lho;->a(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {v0}, Lhn;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lho;->a(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lho;->a:Lhn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lho;->a:Lhn;

    invoke-interface {v0}, Lhn;->e()V

    :cond_0
    return-void
.end method
