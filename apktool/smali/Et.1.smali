.class LEt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:LEs;


# direct methods
.method constructor <init>(LEs;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, LEt;->b:LEs;

    iput-object p2, p0, LEt;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, LEt;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 345
    return-void
.end method
