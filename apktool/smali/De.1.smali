.class LDe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LDp;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:LDd;


# direct methods
.method constructor <init>(LDd;LDp;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, LDe;->d:LDd;

    iput-object p2, p0, LDe;->a:LDp;

    iput-object p3, p0, LDe;->b:Landroid/view/View;

    iput p4, p0, LDe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, LDe;->d:LDd;

    iget-object v1, p0, LDe;->a:LDp;

    iget-object v2, p0, LDe;->b:Landroid/view/View;

    iget v3, p0, LDe;->c:I

    invoke-virtual {v0, v1, v2, v3}, LDd;->broadcastClick(LDp;Landroid/view/View;I)V

    .line 83
    return-void
.end method
