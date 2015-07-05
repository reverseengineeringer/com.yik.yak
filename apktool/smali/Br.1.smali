.class LBr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:LBq;


# direct methods
.method constructor <init>(LBq;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, LBr;->b:LBq;

    iput-object p2, p0, LBr;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, LBr;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 547
    return-void
.end method
