.class Lhs;
.super Ljava/lang/Object;

# interfaces
.implements Lhv;


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lho;


# direct methods
.method constructor <init>(Lho;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lhs;->e:Lho;

    iput-object p2, p0, Lhs;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lhs;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lhs;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lhs;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lhn;)V
    .locals 5

    iget-object v0, p0, Lhs;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lhs;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lhs;->e:Lho;

    invoke-static {v1}, Lho;->b(Lho;)Lhn;

    move-result-object v1

    iget-object v2, p0, Lhs;->b:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lhs;->c:Landroid/view/ViewGroup;

    iget-object v4, p0, Lhs;->d:Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4}, Lhn;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
