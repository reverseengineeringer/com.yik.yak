.class LGh;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:LGg;


# direct methods
.method constructor <init>(LGg;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, LGh;->a:LGg;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, LGh;->a:LGg;

    invoke-static {v0}, LGg;->a(LGg;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, LGh;->a:LGg;

    invoke-static {v0}, LGg;->a(LGg;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, LGh;->a:LGg;

    invoke-virtual {v1}, LGg;->c()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 111
    :cond_0
    return-void
.end method
